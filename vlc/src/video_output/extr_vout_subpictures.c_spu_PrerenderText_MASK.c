#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct TYPE_13__ {int i_visible_width; int i_visible_height; } ;
typedef  TYPE_2__ video_format_t ;
struct TYPE_14__ {int i_original_picture_width; int i_original_picture_height; TYPE_4__* p_region; int /*<<< orphan*/  i_start; scalar_t__ b_subtitle; } ;
typedef  TYPE_3__ subpicture_t ;
struct TYPE_12__ {scalar_t__ i_chroma; } ;
struct TYPE_15__ {TYPE_1__ fmt; struct TYPE_15__* p_next; } ;
typedef  TYPE_4__ subpicture_region_t ;
typedef  int /*<<< orphan*/  spu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int const,int const,int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_CODEC_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(spu_t *spu, subpicture_t *p_subpic,
                              video_format_t *fmtsrc, video_format_t *fmtdst,
                              vlc_fourcc_t *chroma_list)
{
    if (p_subpic->i_original_picture_width  <= 0 ||
        p_subpic->i_original_picture_height <= 0) {
        if (p_subpic->i_original_picture_width  > 0 ||
            p_subpic->i_original_picture_height > 0)
            FUNC1(spu, "original picture size %dx%d is unsupported",
                     p_subpic->i_original_picture_width,
                     p_subpic->i_original_picture_height);
        else
            FUNC2(spu, "original picture size is undefined");

        p_subpic->i_original_picture_width  = fmtsrc->i_visible_width;
        p_subpic->i_original_picture_height = fmtsrc->i_visible_height;
    }


    FUNC3(p_subpic, fmtsrc, fmtdst,
                      p_subpic->b_subtitle ? p_subpic->i_start : FUNC4());

    const int i_original_picture_width = p_subpic->i_original_picture_width;
    const int i_original_picture_height = p_subpic->i_original_picture_height;

    subpicture_region_t *region;
    for (region = p_subpic->p_region; region != NULL; region = region->p_next)
    {
        if(region->fmt.i_chroma != VLC_CODEC_TEXT)
            continue;
        FUNC0(spu, region,
                      i_original_picture_width, i_original_picture_height,
                      chroma_list);
    }
}