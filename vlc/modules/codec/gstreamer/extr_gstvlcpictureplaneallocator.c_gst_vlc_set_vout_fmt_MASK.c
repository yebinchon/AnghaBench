#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
struct TYPE_9__ {int i_x_offset; int i_y_offset; int /*<<< orphan*/  i_frame_rate_base; int /*<<< orphan*/  i_frame_rate; } ;
typedef  TYPE_1__ video_format_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_codec; TYPE_1__ video; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_11__ {TYPE_2__ fmt_out; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_12__ {int padding_left; int padding_right; int padding_top; int padding_bottom; } ;
typedef  int /*<<< orphan*/  GstVideoInfo ;
typedef  TYPE_4__ GstVideoAlignment ;
typedef  int /*<<< orphan*/  GstStructure ;
typedef  int /*<<< orphan*/  GstCaps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC11( GstVideoInfo *p_info, GstVideoAlignment *p_align,
        GstCaps *p_caps, decoder_t *p_dec )
{
    es_format_t *p_outfmt = &p_dec->fmt_out;
    video_format_t *p_voutfmt = &p_dec->fmt_out.video;
    GstStructure *p_str = FUNC6( p_caps, 0 );
    vlc_fourcc_t i_chroma;
    int i_padded_width, i_padded_height;

    i_chroma = p_outfmt->i_codec = FUNC10(
            VIDEO_ES,
            FUNC7( p_str, "format" ) );
    if( !i_chroma )
    {
        FUNC8( p_dec, "video chroma type not supported" );
        return false;
    }

    i_padded_width = FUNC5( p_info ) + p_align->padding_left +
        p_align->padding_right;
    i_padded_height = FUNC2( p_info ) + p_align->padding_top +
        p_align->padding_bottom;

    FUNC9( p_voutfmt, i_chroma, i_padded_width, i_padded_height,
            FUNC5( p_info ), FUNC2( p_info ),
            FUNC4( p_info ), FUNC3( p_info ));
    p_voutfmt->i_x_offset = p_align->padding_left;
    p_voutfmt->i_y_offset = p_align->padding_top;

    p_voutfmt->i_frame_rate = FUNC1( p_info );
    p_voutfmt->i_frame_rate_base = FUNC0( p_info );

    return true;
}