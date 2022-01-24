#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_5__ {scalar_t__ i_poll_id; scalar_t__ sock; int b_interrupted; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;

/* Variables and functions */
 scalar_t__ SRT_INVALID_SOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *p_data)
{
    sout_access_out_t *p_access = p_data;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    FUNC2( &p_sys->lock );
    if ( p_sys->i_poll_id >= 0 &&  p_sys->sock != SRT_INVALID_SOCK )
    {
        p_sys->b_interrupted = true;

        FUNC0( p_access, "Waking up srt_epoll_wait");

        /* Removing all socket descriptors from the monitoring list
         * wakes up SRT's threads. We only have one to remove. */
        FUNC1( p_sys->i_poll_id, p_sys->sock );
    }
    FUNC3( &p_sys->lock );
}