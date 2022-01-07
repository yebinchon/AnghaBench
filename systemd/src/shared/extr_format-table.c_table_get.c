
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const* data; } ;
typedef TYPE_1__ TableData ;
typedef int TableCell ;
typedef int Table ;


 int assert (int *) ;
 TYPE_1__* table_get_data (int *,int *) ;

const void *table_get(Table *t, TableCell *cell) {
        TableData *d;

        assert(t);

        d = table_get_data(t, cell);
        if (!d)
                return ((void*)0);

        return d->data;
}
