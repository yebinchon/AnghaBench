#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int color; int /*<<< orphan*/  yellow_b; int /*<<< orphan*/  yellow_g; int /*<<< orphan*/  yellow_r; } ;
typedef  TYPE_2__ intf_sys_t ;
struct TYPE_8__ {int /*<<< orphan*/  b; int /*<<< orphan*/  f; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int C_DEFAULT ; 
 int C_MAX ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* color_pairs ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    if (!FUNC2()) {
        sys->color = false;
        FUNC5(intf, "Terminal doesn't support colors");
        return;
    }

    FUNC6();
    for (int i = C_DEFAULT + 1; i < C_MAX; i++)
        FUNC4(i, color_pairs[i].f, color_pairs[i].b);

    /* untested, in all my terminals, !can_change_color() --funman */
    if (FUNC0()) {
        FUNC1(COLOR_YELLOW, &sys->yellow_r, &sys->yellow_g, &sys->yellow_b);
        FUNC3(COLOR_YELLOW, 960, 500, 0); /* YELLOW -> ORANGE */
    }
}