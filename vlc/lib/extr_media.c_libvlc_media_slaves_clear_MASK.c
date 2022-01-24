#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_input_item; } ;
typedef  TYPE_1__ libvlc_media_t ;
struct TYPE_6__ {int i_slaves; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pp_slaves; } ;
typedef  TYPE_2__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( libvlc_media_t *p_md )
{
    FUNC1( p_md );
    input_item_t *p_input_item = p_md->p_input_item;

    FUNC3( &p_input_item->lock );
    for( int i = 0; i < p_input_item->i_slaves; i++ )
        FUNC2( p_input_item->pp_slaves[i] );
    FUNC0( p_input_item->i_slaves, p_input_item->pp_slaves );
    FUNC4( &p_input_item->lock );
}