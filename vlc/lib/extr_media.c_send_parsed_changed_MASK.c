#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ parsed_status; int is_parsed; int has_asked_preparse; int /*<<< orphan*/  event_manager; int /*<<< orphan*/  parsed_lock; int /*<<< orphan*/  parsed_cond; } ;
typedef  TYPE_3__ libvlc_media_t ;
typedef  scalar_t__ libvlc_media_parsed_status_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
struct TYPE_8__ {scalar_t__ new_status; } ;
struct TYPE_9__ {TYPE_1__ media_parsed_changed; } ;
struct TYPE_11__ {TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ libvlc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  libvlc_MediaParsedChanged ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ libvlc_media_parsed_status_done ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( libvlc_media_t *p_md,
                                 libvlc_media_parsed_status_t new_status )
{
    libvlc_event_t event;

    FUNC6( &p_md->parsed_lock );
    if( p_md->parsed_status == new_status )
    {
        FUNC7( &p_md->parsed_lock );
        return;
    }

    /* Legacy: notify libvlc_media_parse */
    if( !p_md->is_parsed )
    {
        p_md->is_parsed = true;
        FUNC5( &p_md->parsed_cond );
    }

    p_md->parsed_status = new_status;
    if( p_md->parsed_status != libvlc_media_parsed_status_done )
        p_md->has_asked_preparse = false;

    FUNC7( &p_md->parsed_lock );

    if( new_status == libvlc_media_parsed_status_done )
    {
        libvlc_media_list_t *p_subitems = FUNC4( p_md, false );
        if( p_subitems != NULL )
        {
            /* notify the media list */
            FUNC2( p_subitems );
            FUNC1( p_subitems );
            FUNC3( p_subitems );
        }
    }

    /* Construct the event */
    event.type = libvlc_MediaParsedChanged;
    event.u.media_parsed_changed.new_status = new_status;

    /* Send the event */
    FUNC0( &p_md->event_manager, &event );
}