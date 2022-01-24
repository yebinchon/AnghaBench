#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_10__ {int b_ready; int b_error; int /*<<< orphan*/  hvideownd; int /*<<< orphan*/  hparent; int /*<<< orphan*/  parent_window; int /*<<< orphan*/  obj; int /*<<< orphan*/  thread; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  b_done; TYPE_1__ window_area; int /*<<< orphan*/  is_projected; } ;
typedef  TYPE_2__ event_thread_t ;
struct TYPE_11__ {int /*<<< orphan*/  hvideownd; int /*<<< orphan*/  hparent; int /*<<< orphan*/  parent_window; } ;
typedef  TYPE_3__ event_hwnd_t ;
struct TYPE_12__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  is_projected; } ;
typedef  TYPE_4__ event_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  EventThread ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8( event_thread_t *p_event, event_hwnd_t *p_hwnd, const event_cfg_t *p_cfg )
{
    p_event->is_projected = p_cfg->is_projected;
    p_event->window_area.left   = 0;
    p_event->window_area.top    = 0;
    p_event->window_area.right  = p_cfg->width;
    p_event->window_area.bottom = p_cfg->height;

    p_event->b_ready = false;
    FUNC0( &p_event->b_done, false);
    p_event->b_error = false;

    if( FUNC3( &p_event->thread, EventThread, p_event,
                   VLC_THREAD_PRIORITY_LOW ) )
    {
        FUNC2( p_event->obj, "cannot create Vout EventThread" );
        return VLC_EGENERIC;
    }

    FUNC6( &p_event->lock );
    while( !p_event->b_ready )
        FUNC4( &p_event->wait, &p_event->lock );
    const bool b_error = p_event->b_error;
    FUNC7( &p_event->lock );

    if( b_error )
    {
        FUNC5( p_event->thread, NULL );
        p_event->b_ready = false;
        return VLC_EGENERIC;
    }
    FUNC1( p_event->obj, "Vout EventThread running" );

    /* */
    p_hwnd->parent_window = p_event->parent_window;
    p_hwnd->hparent       = p_event->hparent;
    p_hwnd->hvideownd     = p_event->hvideownd;
    return VLC_SUCCESS;
}