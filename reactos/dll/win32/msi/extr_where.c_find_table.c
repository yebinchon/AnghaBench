
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ col_count; struct TYPE_7__* next; } ;
struct TYPE_6__ {scalar_t__ col_count; TYPE_2__* tables; } ;
typedef TYPE_1__ MSIWHEREVIEW ;
typedef TYPE_2__ JOINTABLE ;


 int assert (TYPE_2__*) ;

__attribute__((used)) static JOINTABLE *find_table(MSIWHEREVIEW *wv, UINT col, UINT *table_col)
{
    JOINTABLE *table = wv->tables;

    if(col == 0 || col > wv->col_count)
         return ((void*)0);

    while (col > table->col_count)
    {
        col -= table->col_count;
        table = table->next;
        assert(table);
    }

    *table_col = col;
    return table;
}
