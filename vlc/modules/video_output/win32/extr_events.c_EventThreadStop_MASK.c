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
struct TYPE_3__ {int b_ready; int /*<<< orphan*/  thread; scalar_t__ hvideownd; int /*<<< orphan*/  b_done; } ;
typedef  TYPE_1__ event_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3( event_thread_t *p_event )
{
    if( !p_event->b_ready )
        return;

    FUNC1( &p_event->b_done, true );

    /* we need to be sure Vout EventThread won't stay stuck in
     * GetMessage, so we send a fake message */
    if( p_event->hvideownd )
        FUNC0( p_event->hvideownd, WM_NULL, 0, 0);

    FUNC2( p_event->thread, NULL );
    p_event->b_ready = false;
}