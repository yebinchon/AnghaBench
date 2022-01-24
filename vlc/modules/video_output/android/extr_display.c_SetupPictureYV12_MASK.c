#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int i_pitch; int i_lines; int /*<<< orphan*/ * p_pixels; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_6__ {int i_height; int i_visible_height; int /*<<< orphan*/  i_chroma; } ;
struct TYPE_8__ {int i_planes; TYPE_1__ format; TYPE_2__* p; } ;
typedef  TYPE_3__ picture_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  VLC_CODEC_YV12 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(picture_t *p_picture, uint32_t i_in_stride)
{
    /* according to document of android.graphics.ImageFormat.YV12 */
    int i_stride = FUNC0(i_in_stride);
    int i_c_stride = FUNC0(i_stride / 2);

    p_picture->p->i_pitch = i_stride;

    /* Fill chroma planes for planar YUV */
    for (int n = 1; n < p_picture->i_planes; n++)
    {
        const plane_t *o = &p_picture->p[n-1];
        plane_t *p = &p_picture->p[n];

        p->p_pixels = o->p_pixels + o->i_lines * o->i_pitch;
        p->i_pitch  = i_c_stride;
        p->i_lines  = p_picture->format.i_height / 2;
        /*
          Explicitly set the padding lines of the picture to black (127 for YUV)
          since they might be used by Android during rescaling.
        */
        int visible_lines = p_picture->format.i_visible_height / 2;
        if (visible_lines < p->i_lines)
            FUNC1(&p->p_pixels[visible_lines * p->i_pitch], 127, (p->i_lines - visible_lines) * p->i_pitch);
    }

    if (FUNC3(p_picture->format.i_chroma,
                                      VLC_CODEC_YV12))
        FUNC2( p_picture );
}