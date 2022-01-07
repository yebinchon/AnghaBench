
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TableCell ;
typedef int Table ;
struct TYPE_2__ {size_t minimum_width; } ;


 int assert (int *) ;
 int table_dedup_cell (int *,int *) ;
 TYPE_1__* table_get_data (int *,int *) ;

int table_set_minimum_width(Table *t, TableCell *cell, size_t minimum_width) {
        int r;

        assert(t);
        assert(cell);

        if (minimum_width == (size_t) -1)
                minimum_width = 1;

        r = table_dedup_cell(t, cell);
        if (r < 0)
                return r;

        table_get_data(t, cell)->minimum_width = minimum_width;
        return 0;
}
