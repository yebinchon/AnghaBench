#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int i_es; int /*<<< orphan*/  lock; TYPE_2__** es; } ;
typedef  TYPE_1__ input_item_t ;
struct TYPE_13__ {scalar_t__ i_id; } ;
typedef  TYPE_2__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(input_item_t *item, const es_format_t *fmt)
{
    int i;
    es_format_t *fmt_copy = FUNC4(sizeof *fmt_copy);
    if (!fmt_copy)
        return;

    FUNC2(fmt_copy, fmt);

    FUNC5( &item->lock );

    for( i = 0; i < item->i_es; i++ )
    {
        if (item->es[i]->i_id != fmt->i_id)
            continue;

        /* We've found the right ES, replace it */
        FUNC1(item->es[i]);
        FUNC3(item->es[i]);
        item->es[i] = fmt_copy;
        FUNC6( &item->lock );
        return;
    }

    /* ES not found, insert it */
    FUNC0(item->i_es, item->es, fmt_copy);
    FUNC6( &item->lock );
}