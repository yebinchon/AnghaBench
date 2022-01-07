
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableCell ;
struct TYPE_4__ {size_t n_cells; int * data; int n_columns; int n_allocated; } ;
typedef TYPE_1__ Table ;


 int ENOMEM ;
 int ENXIO ;
 int GREEDY_REALLOC (int *,int ,int ) ;
 int MAX (int,int ) ;
 size_t TABLE_CELL_TO_INDEX (int *) ;
 int assert (TYPE_1__*) ;
 int table_data_ref (int ) ;

int table_dup_cell(Table *t, TableCell *cell) {
        size_t i;

        assert(t);



        i = TABLE_CELL_TO_INDEX(cell);
        if (i >= t->n_cells)
                return -ENXIO;

        if (!GREEDY_REALLOC(t->data, t->n_allocated, MAX(t->n_cells + 1, t->n_columns)))
                return -ENOMEM;

        t->data[t->n_cells++] = table_data_ref(t->data[i]);
        return 0;
}
