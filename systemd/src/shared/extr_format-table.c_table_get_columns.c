
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n_columns; } ;
typedef TYPE_1__ Table ;


 int assert (int) ;

size_t table_get_columns(Table *t) {
        if (!t)
                return 0;

        assert(t->n_columns > 0);
        return t->n_columns;
}
