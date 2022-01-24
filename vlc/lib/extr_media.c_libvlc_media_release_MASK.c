#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ i_refcount; TYPE_6__* p_libvlc_instance; int /*<<< orphan*/  event_manager; int /*<<< orphan*/  subitems_lock; int /*<<< orphan*/  parsed_lock; int /*<<< orphan*/  parsed_cond; int /*<<< orphan*/  p_input_item; scalar_t__ p_subitems; } ;
typedef  TYPE_3__ libvlc_media_t ;
struct TYPE_11__ {TYPE_3__* md; } ;
struct TYPE_12__ {TYPE_1__ media_freed; } ;
struct TYPE_14__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ libvlc_event_t ;
struct TYPE_15__ {int /*<<< orphan*/  p_libvlc_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libvlc_MediaFreed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10( libvlc_media_t *p_md )
{
    if (!p_md)
        return;

    p_md->i_refcount--;

    if( p_md->i_refcount > 0 )
        return;

    FUNC7( p_md );

    /* Cancel asynchronous parsing (if any) */
    FUNC2( p_md->p_libvlc_instance->p_libvlc_int, p_md );

    if( p_md->p_subitems )
        FUNC5( p_md->p_subitems );

    FUNC1( p_md->p_input_item );

    FUNC8( &p_md->parsed_cond );
    FUNC9( &p_md->parsed_lock );
    FUNC9( &p_md->subitems_lock );

    /* Construct the event */
    libvlc_event_t event;
    event.type = libvlc_MediaFreed;
    event.u.media_freed.md = p_md;

    /* Send the event */
    FUNC4( &p_md->event_manager, &event );

    FUNC3( &p_md->event_manager );
    FUNC6( p_md->p_libvlc_instance );
    FUNC0( p_md );
}