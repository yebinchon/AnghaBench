#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fmt_in; int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  p_module; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_9__ {int /*<<< orphan*/  obj; TYPE_3__* last; TYPE_3__* first; } ;
typedef  TYPE_2__ filter_chain_t ;
struct TYPE_10__ {int /*<<< orphan*/  mouse; int /*<<< orphan*/  pending; struct TYPE_10__* prev; struct TYPE_10__* next; } ;
typedef  TYPE_3__ chained_filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7( filter_chain_t *chain, filter_t *filter )
{
    chained_filter_t *chained = (chained_filter_t *)filter;

    /* Remove it from the chain */
    if( chained->prev != NULL )
        chained->prev->next = chained->next;
    else
    {
        FUNC1( chained == chain->first );
        chain->first = chained->next;
    }

    if( chained->next != NULL )
        chained->next->prev = chained->prev;
    else
    {
        FUNC1( chained == chain->last );
        chain->last = chained->prev;
    }

    FUNC4( filter, filter->p_module );

    FUNC5( chain->obj, "Filter %p removed from chain", (void *)filter );
    FUNC0( chained->pending );

    FUNC3( chained->mouse );
    FUNC2( &filter->fmt_out );
    FUNC2( &filter->fmt_in );

    FUNC6(filter);
    /* FIXME: check fmt_in/fmt_out consitency */
}