#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_setup_t ;
struct TYPE_12__ {int depth; int bits_per_pixel; } ;
typedef  TYPE_2__ xcb_format_t ;
typedef  int uint_fast8_t ;
typedef  void* uint_fast16_t ;
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  es_out_id_t ;
struct TYPE_11__ {int i_bits_per_pixel; int i_sar_num; int i_sar_den; int i_frame_rate; int i_frame_rate_base; void* i_height; void* i_visible_height; void* i_width; void* i_visible_width; scalar_t__ i_chroma; } ;
struct TYPE_13__ {TYPE_1__ video; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_14__ {int /*<<< orphan*/  out; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_15__ {int rate; int /*<<< orphan*/  conn; } ;
typedef  TYPE_5__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 scalar_t__ VLC_CODEC_ARGB ; 
 scalar_t__ VLC_CODEC_RGB15 ; 
 scalar_t__ VLC_CODEC_RGB16 ; 
 scalar_t__ VLC_CODEC_RGB24 ; 
 scalar_t__ VLC_CODEC_RGB32 ; 
 scalar_t__ VLC_CODEC_RGB8 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static es_out_id_t *FUNC6 (demux_t *demux, uint_fast16_t width,
                            uint_fast16_t height, uint_fast8_t depth,
                            uint8_t *bpp)
{
    demux_sys_t *p_sys = demux->p_sys;
    const xcb_setup_t *setup = FUNC3 (p_sys->conn);
    uint32_t chroma = 0;

    for (const xcb_format_t *fmt = FUNC4 (setup),
             *end = fmt + FUNC5 (setup);
         fmt < end; fmt++)
    {
        if (fmt->depth != depth)
            continue;
        switch (fmt->depth)
        {
            case 32:
                if (fmt->bits_per_pixel == 32)
                    chroma = VLC_CODEC_ARGB;
                break;
            case 24:
                if (fmt->bits_per_pixel == 32)
                    chroma = VLC_CODEC_RGB32;
                else if (fmt->bits_per_pixel == 24)
                    chroma = VLC_CODEC_RGB24;
                break;
            case 16:
                if (fmt->bits_per_pixel == 16)
                    chroma = VLC_CODEC_RGB16;
                break;
            case 15:
                if (fmt->bits_per_pixel == 16)
                    chroma = VLC_CODEC_RGB15;
                break;
            case 8: /* XXX: screw grey scale! */
                if (fmt->bits_per_pixel == 8)
                    chroma = VLC_CODEC_RGB8;
                break;
        }
        if (chroma != 0)
        {
            *bpp = fmt->bits_per_pixel;
            break;
        }
    }

    if (!chroma)
    {
        FUNC2 (demux, "unsupported pixmap formats");
        return NULL;
    }

    es_format_t fmt;

    FUNC0 (&fmt, VIDEO_ES, chroma);
    fmt.video.i_chroma = chroma;
    fmt.video.i_bits_per_pixel = *bpp;
    fmt.video.i_sar_num = fmt.video.i_sar_den = 1;
    fmt.video.i_frame_rate = 1000 * p_sys->rate;
    fmt.video.i_frame_rate_base = 1000;
    fmt.video.i_visible_width = fmt.video.i_width = width;
    fmt.video.i_visible_height = fmt.video.i_height = height;

    return FUNC1 (demux->out, &fmt);
}