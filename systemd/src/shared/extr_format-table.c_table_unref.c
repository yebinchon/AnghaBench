
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t n_cells; int * empty_string; int * reverse_map; int * sort_map; int * display_map; int * data; } ;
typedef TYPE_1__ Table ;


 int free (int *) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int table_data_unref (int ) ;

Table *table_unref(Table *t) {
        size_t i;

        if (!t)
                return ((void*)0);

        for (i = 0; i < t->n_cells; i++)
                table_data_unref(t->data[i]);

        free(t->data);
        free(t->display_map);
        free(t->sort_map);
        free(t->reverse_map);
        free(t->empty_string);

        return mfree(t);
}
