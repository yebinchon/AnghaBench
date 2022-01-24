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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {int read_fd; int write_fd; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; scalar_t__ pid; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    stream_sys_t *p_sys = stream->p_sys;
    int status;

    FUNC2 (p_sys->thread);
    FUNC3 (p_sys->read_fd);
    FUNC5 (p_sys->thread, NULL);
    if (p_sys->write_fd != -1)
        /* Killed before EOF? */
        FUNC3 (p_sys->write_fd);

    FUNC1 (obj, "waiting for PID %u", (unsigned)p_sys->pid);
    while (FUNC7 (p_sys->pid, &status, 0) == -1);
    FUNC1 (obj, "exit status %d", status);

    FUNC6 (&p_sys->lock);
    FUNC4 (&p_sys->wait);
    FUNC0 (p_sys);
}