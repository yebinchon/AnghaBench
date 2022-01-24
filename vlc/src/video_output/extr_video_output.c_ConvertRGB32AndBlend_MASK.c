#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
typedef  int /*<<< orphan*/  vlc_blender_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  filter_chain_t ;
struct TYPE_17__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_16__ {TYPE_4__ video; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_14__ {TYPE_10__* spu_blend; } ;
struct TYPE_13__ {TYPE_3__ fmt_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_CODEC_RGB32 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 

__attribute__((used)) static picture_t *FUNC13(vout_thread_t *vout, picture_t *pic,
                                     subpicture_t *subpic)
{
    /* This function will convert the pic to RGB32 and blend the subpic to it.
     * The returned pic can't be used to display since the chroma will be
     * different than the "vout display" one, but it can be used for snapshots.
     * */

    FUNC1(vout->p->spu_blend);

    filter_chain_t *filterc = FUNC6(vout, false, NULL);
    if (!filterc)
        return NULL;

    es_format_t src = vout->p->spu_blend->fmt_out;
    es_format_t dst = src;
    dst.video.i_chroma = VLC_CODEC_RGB32;
    FUNC12(&dst.video);

    FUNC7(filterc, &src, &dst);

    if (FUNC4(filterc, &dst) != 0)
    {
        FUNC5(filterc);
        return NULL;
    }

    FUNC10(pic);
    pic = FUNC8(filterc, pic);
    FUNC5(filterc);

    if (pic)
    {
        vlc_blender_t *swblend = FUNC3(FUNC0(vout), &dst.video);
        if (swblend)
        {
            bool success = FUNC9(pic, swblend, subpic) > 0;
            FUNC2(swblend);
            if (success)
                return pic;
        }
        FUNC11(pic);
    }
    return NULL;
}