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
struct TYPE_6__ {scalar_t__ type; } ;
typedef  TYPE_1__ vout_window_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  class_video; TYPE_1__* parent_window; int /*<<< orphan*/  b_done; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_2__ event_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ VOUT_WINDOW_TYPE_HWND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

event_thread_t *FUNC8( vlc_object_t *obj, vout_window_t *parent_window)
{
    if (parent_window->type != VOUT_WINDOW_TYPE_HWND)
        return NULL;
     /* Create the Vout EventThread, this thread is created by us to isolate
     * the Win32 PeekMessage function calls. We want to do this because
     * Windows can stay blocked inside this call for a long time, and when
     * this happens it thus blocks vlc's video_output thread.
     * Vout EventThread will take care of the creation of the video
     * window (because PeekMessage has to be called from the same thread which
     * created the window). */
    FUNC5( obj, "creating Vout EventThread" );
    event_thread_t *p_event = FUNC4( sizeof(*p_event) );
    if( !p_event )
        return NULL;

    p_event->obj = obj;
    FUNC7( &p_event->lock );
    FUNC6( &p_event->wait );
    FUNC3( &p_event->b_done, false );

    p_event->parent_window = parent_window;

    FUNC2( p_event->class_video, FUNC0(p_event->class_video),
                FUNC1("VLC video output %p"), (void *)p_event );
    return p_event;
}