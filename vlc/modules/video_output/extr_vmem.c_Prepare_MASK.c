#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fmt; TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_9__ {int /*<<< orphan*/  pic_opaque; int /*<<< orphan*/  opaque; int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;int /*<<< orphan*/ * pitches; int /*<<< orphan*/ * lines; int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ,void**) ;} ;
typedef  TYPE_3__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_10__ {TYPE_1__* p; int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_4__ picture_resource_t ;
struct TYPE_7__ {int /*<<< orphan*/  i_pitch; int /*<<< orphan*/  i_lines; void* p_pixels; } ;

/* Variables and functions */
 int PICTURE_PLANE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static void FUNC7(vout_display_t *vd, picture_t *pic, subpicture_t *subpic,
                    vlc_tick_t date)
{
    FUNC0(date);
    vout_display_sys_t *sys = vd->sys;
    picture_resource_t rsc = { .p_sys = NULL };
    void *planes[PICTURE_PLANE_MAX];

    sys->pic_opaque = sys->lock(sys->opaque, planes);

    for (unsigned i = 0; i < PICTURE_PLANE_MAX; i++) {
        rsc.p[i].p_pixels = planes[i];
        rsc.p[i].i_lines  = sys->lines[i];
        rsc.p[i].i_pitch  = sys->pitches[i];
    }

    picture_t *locked = FUNC3(&vd->fmt, &rsc);
    if (FUNC1(locked != NULL)) {
        FUNC2(locked, pic);
        FUNC4(locked);
    }

    if (sys->unlock != NULL)
        sys->unlock(sys->opaque, sys->pic_opaque, planes);

    (void) subpic;
}