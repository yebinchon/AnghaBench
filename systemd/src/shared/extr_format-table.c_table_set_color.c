
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TableCell ;
typedef int Table ;
struct TYPE_2__ {int color; } ;


 int assert (int *) ;
 int empty_to_null (char const*) ;
 int table_dedup_cell (int *,int *) ;
 TYPE_1__* table_get_data (int *,int *) ;

int table_set_color(Table *t, TableCell *cell, const char *color) {
        int r;

        assert(t);
        assert(cell);

        r = table_dedup_cell(t, cell);
        if (r < 0)
                return r;

        table_get_data(t, cell)->color = empty_to_null(color);
        return 0;
}
