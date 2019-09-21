
HOME=$HOME

SRC_ROOT=$HOME/lab/sva/cheri/qemu/

echo "using source root: $SRC_ROOT"


cd /
find  $SRC_ROOT -name "*.[chxsS]" -print > $SRC_ROOT/.cscope/cscope.files
find  $SRC_ROOT -name "*.cpp" -print >> $SRC_ROOT/.cscope/cscope.files
find  $SRC_ROOT -name "*.hx" -print >> $SRC_ROOT/.cscope/cscope.files
find  $SRC_ROOT -name "*.texi" -print >> $SRC_ROOT/.cscope/cscope.files
find  $SRC_ROOT -name "*CMakeLists.txt" -print >> $SRC_ROOT/.cscope/cscope.files

#exit 0
#        -name "*.[chxsS]" -print >$SRC_ROOT/.cscope/cscope.files
#	-path "$SRC_ROOT/sys/riscv*" -prune -o             \
#	-path "$SRC_ROOT/sys/amd64*" -prune -o             \


# regenerate the database

cd $SRC_ROOT/.cscope && cscope -b -q -k

