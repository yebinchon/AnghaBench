#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* next; } ;
struct TYPE_10__ {int table_count; TYPE_2__* tables; scalar_t__ cond; } ;
typedef  TYPE_1__ MSIWHEREVIEW ;
typedef  TYPE_2__ JOINTABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_2__*) ; 
 TYPE_2__** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__**,int /*<<< orphan*/ ,TYPE_2__**) ; 

__attribute__((used)) static JOINTABLE **FUNC3( MSIWHEREVIEW *wv )
{
    JOINTABLE *table;
    JOINTABLE **tables;

    tables = FUNC1( (wv->table_count + 1) * sizeof(*tables) );

    if (wv->cond)
    {
        table = NULL;
        FUNC2(wv->cond, tables, FALSE, &table);
        table = NULL;
        FUNC2(wv->cond, tables, TRUE, &table);
    }

    table = wv->tables;
    while (table)
    {
        FUNC0(tables, table);
        table = table->next;
    }
    return tables;
}