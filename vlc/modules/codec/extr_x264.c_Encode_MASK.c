#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {int i_plane; int /*<<< orphan*/ * i_stride; int /*<<< orphan*/ * plane; int /*<<< orphan*/  i_csp; } ;
struct TYPE_28__ {scalar_t__ i_type; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_pts; scalar_t__ b_keyframe; TYPE_1__ img; } ;
typedef  TYPE_6__ x264_picture_t ;
struct TYPE_29__ {int /*<<< orphan*/ * p_payload; scalar_t__ i_payload; } ;
typedef  TYPE_7__ x264_nal_t ;
struct TYPE_30__ {int i_planes; TYPE_2__* p; int /*<<< orphan*/  date; } ;
typedef  TYPE_8__ picture_t ;
struct TYPE_26__ {int /*<<< orphan*/  i_frame_rate; int /*<<< orphan*/  i_frame_rate_base; } ;
struct TYPE_27__ {TYPE_4__ video; } ;
struct TYPE_31__ {TYPE_5__ fmt_in; TYPE_10__* p_sys; } ;
typedef  TYPE_9__ encoder_t ;
struct TYPE_25__ {int /*<<< orphan*/  b_vfr_input; } ;
struct TYPE_21__ {int i_sei_size; TYPE_3__ param; int /*<<< orphan*/ * p_sei; int /*<<< orphan*/  h; int /*<<< orphan*/  i_colorspace; } ;
typedef  TYPE_10__ encoder_sys_t ;
struct TYPE_22__ {int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_length; int /*<<< orphan*/  i_flags; scalar_t__ p_buffer; } ;
typedef  TYPE_11__ block_t ;
struct TYPE_24__ {int /*<<< orphan*/  i_pitch; int /*<<< orphan*/  p_pixels; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_B ; 
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_I ; 
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_P ; 
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_PB ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ X264_TYPE_I ; 
 scalar_t__ X264_TYPE_P ; 
 TYPE_11__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_7__**,int*,TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 

__attribute__((used)) static block_t *FUNC10( encoder_t *p_enc, picture_t *p_pict )
{
    encoder_sys_t *p_sys = p_enc->p_sys;
    x264_picture_t pic;
    x264_nal_t *nal;
    block_t *p_block;
    int i_nal=0, i_out=0, i=0;

    /* init pic */
    FUNC9( &pic );
    if( FUNC3(p_pict) ) {
       pic.i_pts = p_pict->date;
       pic.img.i_csp = p_sys->i_colorspace;
       pic.img.i_plane = p_pict->i_planes;
       for( i = 0; i < p_pict->i_planes; i++ )
       {
           pic.img.plane[i] = p_pict->p[i].p_pixels;
           pic.img.i_stride[i] = p_pict->p[i].i_pitch;
       }

       FUNC8( p_sys->h, &nal, &i_nal, &pic, &pic );
    } else {
       while( FUNC7( p_sys->h ) && i_nal == 0 ) {
           FUNC8( p_sys->h, &nal, &i_nal, NULL, &pic );
       }
    }

    if( !i_nal ) return NULL;


    /* Get size of block we need */
    for( i = 0; i < i_nal; i++ )
        i_out += nal[i].i_payload;

    p_block = FUNC1( i_out + p_sys->i_sei_size );
    if( !p_block ) return NULL;

    unsigned int i_offset = 0;
    if( FUNC5( p_sys->i_sei_size ) )
    {
       /* insert x264 headers SEI nal into the first picture block at the start */
       FUNC4( p_block->p_buffer, p_sys->p_sei, p_sys->i_sei_size );
       i_offset = p_sys->i_sei_size;
       p_sys->i_sei_size = 0;
       FUNC2( p_sys->p_sei );
       p_sys->p_sei = NULL;
    }
    /* copy encoded data directly to block */
    FUNC4( p_block->p_buffer + i_offset, nal[0].p_payload, i_out );

    if( pic.b_keyframe )
        p_block->i_flags |= BLOCK_FLAG_TYPE_I;
    else if( pic.i_type == X264_TYPE_P || pic.i_type == X264_TYPE_I )
        p_block->i_flags |= BLOCK_FLAG_TYPE_P;
    else if( FUNC0( pic.i_type ) )
        p_block->i_flags |= BLOCK_FLAG_TYPE_B;
    else
        p_block->i_flags |= BLOCK_FLAG_TYPE_PB;

    /* If we happen to have vfr stream, don't set length at all */
    if( !p_sys->param.b_vfr_input )
    {
        /* This isn't really valid for streams with B-frames */
        p_block->i_length = FUNC6(
                    p_enc->fmt_in.video.i_frame_rate_base,
                    p_enc->fmt_in.video.i_frame_rate );
    }

    /* scale pts-values back*/
    p_block->i_pts = pic.i_pts;
    p_block->i_dts = pic.i_dts;

    return p_block;
}