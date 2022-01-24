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
struct TYPE_4__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_5__ {int /*<<< orphan*/  i_pic_pitch; int /*<<< orphan*/  p_pic_buffer; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/ * vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(vout_display_t *vd, picture_t *picture, subpicture_t *subpic,
                    vlc_tick_t date)
{
    FUNC0(subpic);
    FUNC0(date);
    vout_display_sys_t *sys = vd->sys;
    picture_t fake_pic = *picture;
    FUNC2(&fake_pic, sys->p_pic_buffer, sys->i_pic_pitch);
    FUNC1(&fake_pic, picture);
}