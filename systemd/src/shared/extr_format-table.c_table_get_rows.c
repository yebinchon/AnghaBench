
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t n_columns; size_t n_cells; } ;
typedef TYPE_1__ Table ;


 int assert (int) ;

size_t table_get_rows(Table *t) {
        if (!t)
                return 0;

        assert(t->n_columns > 0);
        return t->n_cells / t->n_columns;
}
