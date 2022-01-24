#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
struct TYPE_4__ {scalar_t__ i_refcount; int /*<<< orphan*/  p_libvlc_instance; int /*<<< orphan*/  items; int /*<<< orphan*/  refcount_lock; int /*<<< orphan*/  object_lock; int /*<<< orphan*/ * p_md; int /*<<< orphan*/  event_manager; } ;
typedef  TYPE_1__ libvlc_media_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10( libvlc_media_list_t * p_mlist )
{
    FUNC8( &p_mlist->refcount_lock );
    p_mlist->i_refcount--;
    if( p_mlist->i_refcount > 0 )
    {
        FUNC9( &p_mlist->refcount_lock );
        return;
    }
    FUNC9( &p_mlist->refcount_lock );

    /* Refcount null, time to free */

    FUNC1( &p_mlist->event_manager );
    FUNC2( p_mlist->p_md );

    for( size_t i = 0; i < FUNC5( &p_mlist->items ); i++ )
    {
        libvlc_media_t* p_md = FUNC6( &p_mlist->items, i );
        FUNC2( p_md );
    }

    FUNC7( &p_mlist->object_lock );
    FUNC7( &p_mlist->refcount_lock );
    FUNC4( &p_mlist->items );

    FUNC3( p_mlist->p_libvlc_instance );
    FUNC0( p_mlist );
}