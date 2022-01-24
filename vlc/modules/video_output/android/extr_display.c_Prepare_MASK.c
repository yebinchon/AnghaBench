#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_19__ {int b_sub_invalid; int b_has_subpictures; TYPE_1__* p_window; int /*<<< orphan*/ * p_spu_blend; TYPE_5__* p_sub_pic; TYPE_15__* p_sub_window; int /*<<< orphan*/ * p_sub_buffer_bounds; int /*<<< orphan*/  p_prepared_pic; } ;
typedef  TYPE_3__ vout_display_sys_t ;
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_20__ {int /*<<< orphan*/  p_sys; } ;
typedef  TYPE_4__ picture_t ;
struct TYPE_21__ {int /*<<< orphan*/  format; } ;
struct TYPE_17__ {scalar_t__ b_opaque; } ;
struct TYPE_16__ {int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_15__*,int) ; 
 TYPE_5__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 scalar_t__ FUNC15 () ; 

__attribute__((used)) static void FUNC16(vout_display_t *vd, picture_t *picture,
                    subpicture_t *subpicture, vlc_tick_t date)
{
    vout_display_sys_t *sys = vd->sys;

    if (!sys->p_window->b_opaque)
    {
        if (FUNC4(sys->p_prepared_pic) == 0)
        {
            FUNC13(sys->p_prepared_pic, picture);
            FUNC5(sys->p_prepared_pic);
        }
    }

    if (subpicture && sys->p_sub_window) {
        if (sys->b_sub_invalid) {
            sys->b_sub_invalid = false;
            if (sys->p_sub_pic) {
                FUNC14(sys->p_sub_pic);
                sys->p_sub_pic = NULL;
            }
            if (sys->p_spu_blend) {
                FUNC9(sys->p_spu_blend);
                sys->p_spu_blend = NULL;
            }
            FUNC11(sys->p_sub_buffer_bounds);
            sys->p_sub_buffer_bounds = NULL;
        }

        if (!sys->p_sub_pic
         && FUNC2(sys, sys->p_sub_window, 1) == 0)
            sys->p_sub_pic = FUNC3(sys, &sys->p_sub_window->fmt, false);
        if (!sys->p_spu_blend && sys->p_sub_pic)
            sys->p_spu_blend = FUNC10(FUNC7(vd),
                                               &sys->p_sub_pic->format);

        if (sys->p_sub_pic && sys->p_spu_blend)
            sys->b_has_subpictures = true;
    }
    /* As long as no subpicture was received, do not call
       SubpictureDisplay since JNI calls and clearing the subtitles
       surface are expensive operations. */
    if (sys->b_has_subpictures)
    {
        FUNC6(vd, subpicture);
        if (!subpicture)
        {
            /* The surface has been cleared and there is no new
               subpicture to upload, do not clear again until a new
               subpicture is received. */
            sys->b_has_subpictures = false;
        }
    }
    if (sys->p_window->b_opaque
     && FUNC0(picture->p_sys))
    {
        vlc_tick_t now = FUNC15();
        if (date > now)
        {
            if (date - now <= FUNC8(1))
                FUNC1(picture->p_sys, date);
            else /* The picture will be displayed from the Display callback */
                FUNC12(vd, "picture way too early to release at time");
        }
    }
}