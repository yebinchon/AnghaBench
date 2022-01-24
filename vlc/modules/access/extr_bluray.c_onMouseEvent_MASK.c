#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  i_y; int /*<<< orphan*/  i_x; } ;
typedef  TYPE_1__ vlc_mouse_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_12__ {TYPE_1__ oldmouse; int /*<<< orphan*/  bluray; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  BD_VK_MOUSE_ACTIVATE ; 
 int /*<<< orphan*/  MOUSE_BUTTON_LEFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(const vlc_mouse_t *newmouse, void *user_data)
{
    demux_t     *p_demux = user_data;
    demux_sys_t *p_sys   = p_demux->p_sys;

    if (!newmouse) {
        FUNC4(&p_sys->oldmouse);
        return;
    }

    if (FUNC2(&p_sys->oldmouse, newmouse))
        FUNC0(p_sys->bluray, -1, newmouse->i_x, newmouse->i_y);

    if (FUNC3( &p_sys->oldmouse, newmouse, MOUSE_BUTTON_LEFT))
        FUNC1(p_sys->bluray, -1, BD_VK_MOUSE_ACTIVATE);
    p_sys->oldmouse = *newmouse;
}