#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int i_chroma; } ;
typedef  TYPE_1__ video_format_t ;
struct TYPE_13__ {int /*<<< orphan*/ * context; TYPE_1__ format; } ;
typedef  TYPE_2__ picture_t ;

/* Variables and functions */
#define  VLC_CODEC_BGRA 132 
 int VLC_CODEC_CVPX_BGRA ; 
 int VLC_CODEC_CVPX_I420 ; 
 int VLC_CODEC_CVPX_NV12 ; 
 int VLC_CODEC_CVPX_P010 ; 
 int VLC_CODEC_CVPX_UYVY ; 
#define  VLC_CODEC_I420 131 
#define  VLC_CODEC_NV12 130 
#define  VLC_CODEC_P010 129 
#define  VLC_CODEC_UYVY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

picture_t *
FUNC6(picture_t *mapped_pic)
{
    video_format_t fmt = mapped_pic->format;
    switch (fmt.i_chroma)
    {
        case VLC_CODEC_UYVY: fmt.i_chroma = VLC_CODEC_CVPX_UYVY; break;
        case VLC_CODEC_NV12: fmt.i_chroma = VLC_CODEC_CVPX_NV12; break;
        case VLC_CODEC_P010: fmt.i_chroma = VLC_CODEC_CVPX_P010; break;
        case VLC_CODEC_I420: fmt.i_chroma = VLC_CODEC_CVPX_I420; break;
        case VLC_CODEC_BGRA: fmt.i_chroma = VLC_CODEC_CVPX_BGRA; break;
        default:
            FUNC0(!"invalid mapped_pic fmt");
            FUNC5(mapped_pic);
            return NULL;
    }
    FUNC0(mapped_pic->context != NULL);

    picture_t *hw_pic = FUNC4(&fmt);
    if (hw_pic == NULL)
    {
        FUNC5(mapped_pic);
        return NULL;
    }

    FUNC1(hw_pic, FUNC2(mapped_pic));
    FUNC3(hw_pic, mapped_pic);
    FUNC5(mapped_pic);
    return hw_pic;
}