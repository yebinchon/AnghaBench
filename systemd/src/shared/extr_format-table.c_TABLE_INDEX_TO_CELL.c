
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableCell ;


 int * SIZE_TO_PTR (size_t) ;
 int assert (int) ;

__attribute__((used)) static TableCell* TABLE_INDEX_TO_CELL(size_t index) {
        assert(index != (size_t) -1);
        return SIZE_TO_PTR(index + 1);
}
