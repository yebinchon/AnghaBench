#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sys; } ;
typedef  TYPE_1__ vout_display_t ;
typedef  int /*<<< orphan*/ * vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(vout_display_t *vd, picture_t *pic, subpicture_t *subpic, vlc_tick_t date)
{
    FUNC2(subpic);
    FUNC2(date);
    picture_t fake_pic = *pic;
    if (FUNC0(vd->sys, &fake_pic) == VLC_SUCCESS)
    {
        FUNC3(&fake_pic, pic);
        FUNC1(&fake_pic);
    }
}