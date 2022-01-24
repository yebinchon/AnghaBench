#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int new_status; } ;
struct TYPE_11__ {TYPE_1__ input_item_preparsed_changed; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
typedef  TYPE_5__ vlc_event_t ;
struct TYPE_15__ {int /*<<< orphan*/  event_manager; } ;
typedef  TYPE_6__ libvlc_media_t ;
struct TYPE_12__ {int /*<<< orphan*/  new_status; } ;
struct TYPE_13__ {TYPE_3__ media_parsed_changed; } ;
struct TYPE_16__ {TYPE_4__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_7__ libvlc_event_t ;

/* Variables and functions */
 int ITEM_PREPARSED ; 
 int /*<<< orphan*/  libvlc_MediaParsedChanged ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  libvlc_media_parsed_status_done ; 

__attribute__((used)) static void FUNC1( const vlc_event_t *p_event,
                                          void * user_data )
{
    libvlc_media_t *p_md = user_data;
    if( p_event->u.input_item_preparsed_changed.new_status & ITEM_PREPARSED )
    {
        /* Send the event */
        libvlc_event_t event;
        event.type = libvlc_MediaParsedChanged;
        event.u.media_parsed_changed.new_status = libvlc_media_parsed_status_done;
        FUNC0( &p_md->event_manager, &event );
    }
}