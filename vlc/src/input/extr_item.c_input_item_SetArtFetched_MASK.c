#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ p_meta; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 int ITEM_ART_FETCHED ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( input_item_t *p_i, bool b_art_fetched )
{
    FUNC3( &p_i->lock );

    if( !p_i->p_meta )
        p_i->p_meta = FUNC1();

    int status = FUNC0(p_i->p_meta);

    if( b_art_fetched )
        status |= ITEM_ART_FETCHED;
    else
        status &= ~ITEM_ART_FETCHED;

    FUNC2(p_i->p_meta, status);

    FUNC4( &p_i->lock );
}