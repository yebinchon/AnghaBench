
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uppercase; int formatted; } ;
typedef TYPE_1__ TableData ;
typedef int TableCell ;
typedef int Table ;


 int assert (int *) ;
 int assert_se (TYPE_1__*) ;
 int mfree (int ) ;
 int table_dedup_cell (int *,int *) ;
 TYPE_1__* table_get_data (int *,int *) ;

int table_set_uppercase(Table *t, TableCell *cell, bool b) {
        TableData *d;
        int r;

        assert(t);
        assert(cell);

        r = table_dedup_cell(t, cell);
        if (r < 0)
                return r;

        assert_se(d = table_get_data(t, cell));

        if (d->uppercase == b)
                return 0;

        d->formatted = mfree(d->formatted);
        d->uppercase = b;
        return 1;
}
