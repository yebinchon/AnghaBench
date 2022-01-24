#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABOVE_NORMAL_PRIORITY_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HIGH_PRIORITY_CLASS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ mdate_default ; 
 scalar_t__ mdate_selected ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  setup_lock ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 

void FUNC10(libvlc_int_t *vlc)
{
    FUNC0(&setup_lock);
    if (mdate_selected != mdate_default)
    {
        FUNC2(&setup_lock);
        return;
    }

    if (!FUNC3((vlc != NULL) ? FUNC5(vlc) : NULL))
        FUNC6();
    FUNC7(mdate_selected != mdate_default);

#if !VLC_WINSTORE_APP
    /* Raise default priority of the current process */
#ifndef ABOVE_NORMAL_PRIORITY_CLASS
#   define ABOVE_NORMAL_PRIORITY_CLASS 0x00008000
#endif
    if (FUNC9(vlc, "high-priority"))
    {
        if (FUNC4(FUNC1(), ABOVE_NORMAL_PRIORITY_CLASS)
         || FUNC4(FUNC1(), HIGH_PRIORITY_CLASS))
            FUNC8(vlc, "raised process priority");
        else
            FUNC8(vlc, "could not raise process priority");
    }
#endif
    FUNC2(&setup_lock);
}