#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ i_count; } ;
struct TYPE_6__ {int b_read_only; int i_refcount; int /*<<< orphan*/ * p_internal_md; int /*<<< orphan*/ * p_md; TYPE_2__ items; int /*<<< orphan*/  refcount_lock; int /*<<< orphan*/  object_lock; int /*<<< orphan*/  event_manager; int /*<<< orphan*/ * p_libvlc_instance; } ;
typedef  TYPE_1__ libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

libvlc_media_list_t *
FUNC8( libvlc_instance_t * p_inst )
{
    libvlc_media_list_t * p_mlist;

    p_mlist = FUNC4(sizeof(libvlc_media_list_t));
    if( FUNC5(p_mlist == NULL) )
    {
        FUNC2( "Not enough memory" );
        return NULL;
    }

    p_mlist->p_libvlc_instance = p_inst;
    FUNC1( &p_mlist->event_manager, p_mlist );
    p_mlist->b_read_only = false;

    FUNC7( &p_mlist->object_lock );
    FUNC7( &p_mlist->refcount_lock ); // FIXME: spinlock?

    FUNC6( &p_mlist->items );
    FUNC0( p_mlist->items.i_count == 0 );
    p_mlist->i_refcount = 1;
    p_mlist->p_md = NULL;
    p_mlist->p_internal_md = NULL;

    FUNC3( p_inst );
    return p_mlist;
}