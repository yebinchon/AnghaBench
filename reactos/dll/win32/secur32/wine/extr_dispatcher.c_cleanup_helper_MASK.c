#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_5__ {scalar_t__ helper_pid; int /*<<< orphan*/  pipe_in; int /*<<< orphan*/  pipe_out; struct TYPE_5__* session_key; struct TYPE_5__* com_buf; } ;
typedef  TYPE_1__* PNegoHelper ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(PNegoHelper helper)
{

    FUNC2("Killing helper %p\n", helper);
    if(helper == NULL)
        return;

    FUNC1(FUNC0(), 0, helper->com_buf);
    FUNC1(FUNC0(), 0, helper->session_key);

    /* closing stdin will terminate ntlm_auth */
    FUNC3(helper->pipe_out);
    FUNC3(helper->pipe_in);

#ifndef __REACTOS__

#ifdef HAVE_FORK
    if (helper->helper_pid > 0) /* reap child */
    {
        pid_t wret;
        do {
            wret = waitpid(helper->helper_pid, NULL, 0);
        } while (wret < 0 && errno == EINTR);
    }
#endif

#endif

    FUNC1(FUNC0(), 0, helper);
}