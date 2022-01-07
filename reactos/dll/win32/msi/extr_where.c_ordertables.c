
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* next; } ;
struct TYPE_10__ {int table_count; TYPE_2__* tables; scalar_t__ cond; } ;
typedef TYPE_1__ MSIWHEREVIEW ;
typedef TYPE_2__ JOINTABLE ;


 int FALSE ;
 int TRUE ;
 int add_to_array (TYPE_2__**,TYPE_2__*) ;
 TYPE_2__** msi_alloc_zero (int) ;
 int reorder_check (scalar_t__,TYPE_2__**,int ,TYPE_2__**) ;

__attribute__((used)) static JOINTABLE **ordertables( MSIWHEREVIEW *wv )
{
    JOINTABLE *table;
    JOINTABLE **tables;

    tables = msi_alloc_zero( (wv->table_count + 1) * sizeof(*tables) );

    if (wv->cond)
    {
        table = ((void*)0);
        reorder_check(wv->cond, tables, FALSE, &table);
        table = ((void*)0);
        reorder_check(wv->cond, tables, TRUE, &table);
    }

    table = wv->tables;
    while (table)
    {
        add_to_array(tables, table);
        table = table->next;
    }
    return tables;
}
