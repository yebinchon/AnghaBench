
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableCell ;
struct TYPE_4__ {size_t n_columns; size_t n_cells; } ;
typedef TYPE_1__ Table ;


 int * TABLE_INDEX_TO_CELL (size_t) ;
 int assert (TYPE_1__*) ;

TableCell *table_get_cell(Table *t, size_t row, size_t column) {
        size_t i;

        assert(t);

        if (column >= t->n_columns)
                return ((void*)0);

        i = row * t->n_columns + column;
        if (i >= t->n_cells)
                return ((void*)0);

        return TABLE_INDEX_TO_CELL(i);
}
