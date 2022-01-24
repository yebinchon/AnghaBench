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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  WINMM_cs ; 
 int /*<<< orphan*/  psLastEvent ; 
 int /*<<< orphan*/  psStopEvent ; 

__attribute__((used)) static	void FUNC3(void)
{
    FUNC2();

    /* FIXME: should also free content and resources allocated
     * inside WINMM_IData */
    FUNC0(psStopEvent);
    FUNC0(psLastEvent);
    FUNC1(&WINMM_cs);
}