
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableCell ;
typedef int Table ;


 void const* table_get (int *,int *) ;
 int * table_get_cell (int *,size_t,size_t) ;

const void* table_get_at(Table *t, size_t row, size_t column) {
        TableCell *cell;

        cell = table_get_cell(t, row, column);
        if (!cell)
                return ((void*)0);

        return table_get(t, cell);
}
