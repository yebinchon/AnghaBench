#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_6__ {int /*<<< orphan*/  cv; int /*<<< orphan*/  dp; scalar_t__ dither; int /*<<< orphan*/ * fifo; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ vout_display_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->fifo != NULL) {
        FUNC6(sys->thread);
        FUNC7(sys->thread, NULL);
        FUNC1(sys->fifo);
    }
    if (sys->dither)
        FUNC4(sys->dither);
    FUNC2(sys->dp);
    FUNC3(sys->cv);

#if defined(_WIN32)
    FreeConsole();
#endif

    FUNC5(sys);
}