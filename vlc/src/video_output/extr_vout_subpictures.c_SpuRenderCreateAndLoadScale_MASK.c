#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  void* vlc_fourcc_t ;
struct TYPE_8__ {int i_width; int i_visible_width; int i_height; int i_visible_height; void* i_chroma; } ;
struct TYPE_10__ {TYPE_1__ video; } ;
struct TYPE_9__ {int /*<<< orphan*/  p_module; TYPE_6__ fmt_out; TYPE_6__ fmt_in; } ;
typedef  TYPE_2__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static filter_t *FUNC4(vlc_object_t *object,
                                             vlc_fourcc_t src_chroma,
                                             vlc_fourcc_t dst_chroma,
                                             bool require_resize)
{
    filter_t *scale = FUNC2(object, sizeof(*scale), "scale");
    if (!scale)
        return NULL;

    FUNC0(&scale->fmt_in, VIDEO_ES, 0);
    scale->fmt_in.video.i_chroma = src_chroma;
    scale->fmt_in.video.i_width =
    scale->fmt_in.video.i_visible_width =
    scale->fmt_in.video.i_height =
    scale->fmt_in.video.i_visible_height = 32;

    FUNC0(&scale->fmt_out, VIDEO_ES, 0);
    scale->fmt_out.video.i_chroma = dst_chroma;
    scale->fmt_out.video.i_width =
    scale->fmt_out.video.i_visible_width =
    scale->fmt_out.video.i_height =
    scale->fmt_out.video.i_visible_height = require_resize ? 16 : 32;

    scale->p_module = FUNC1(scale, "video converter", NULL, false);
    if (!scale->p_module)
    {
        FUNC3(scale);
        return NULL;
    }

    return scale;
}