
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t n_columns; size_t n_cells; } ;
typedef TYPE_1__ Table ;


 int EINVAL ;
 int TABLE_EMPTY ;
 int assert (TYPE_1__*) ;
 int table_add_cell (TYPE_1__*,int *,int ,int *) ;

int table_fill_empty(Table *t, size_t until_column) {
        int r;

        assert(t);




        if (until_column >= t->n_columns)
                return -EINVAL;

        do {
                r = table_add_cell(t, ((void*)0), TABLE_EMPTY, ((void*)0));
                if (r < 0)
                        return r;

        } while ((t->n_cells % t->n_columns) != until_column);

        return 0;
}
