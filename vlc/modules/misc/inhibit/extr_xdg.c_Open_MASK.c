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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  inhibit; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ vlc_inhibit_t ;
struct TYPE_7__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  timer; } ;
typedef  TYPE_2__ vlc_inhibit_sys_t ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  Inhibit ; 
 int POSIX_SPAWN_SETSIGDEF ; 
 int POSIX_SPAWN_SETSIGMASK ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  Timer ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10 (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *p_sys = FUNC1 (sizeof (*p_sys));
    if (p_sys == NULL)
        return VLC_ENOMEM;

    FUNC3 (&p_sys->attr);
    /* Reset signal handlers to default and clear mask in the child process */
    {
        sigset_t set;

        FUNC8 (&set);
        FUNC6 (&p_sys->attr, &set);
        FUNC7 (&set, SIGPIPE);
        FUNC5 (&p_sys->attr, &set);
        FUNC4 (&p_sys->attr, POSIX_SPAWN_SETSIGDEF
                                              | POSIX_SPAWN_SETSIGMASK);
    }

    ih->p_sys = p_sys;
    if (FUNC9 (&p_sys->timer, Timer, ih))
    {
        FUNC2 (&p_sys->attr);
        FUNC0 (p_sys);
        return VLC_ENOMEM;
    }

    ih->inhibit = Inhibit;
    return VLC_SUCCESS;
}