
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableCell ;


 int * SIZE_TO_PTR (size_t) ;

__attribute__((used)) static inline TableCell* TABLE_HEADER_CELL(size_t i) {
        return SIZE_TO_PTR(i + 1);
}
