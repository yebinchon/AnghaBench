
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableDataType ;
typedef int TableCell ;
typedef int Table ;


 int table_add_cell_full (int *,int **,int ,void const*,size_t,size_t,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline int table_add_cell(Table *t, TableCell **ret_cell, TableDataType type, const void *data) {
        return table_add_cell_full(t, ret_cell, type, data, (size_t) -1, (size_t) -1, (unsigned) -1, (unsigned) -1, (unsigned) -1);
}
