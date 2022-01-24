#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_17__ ;

/* Type definitions */
struct TYPE_30__ {scalar_t__ date; TYPE_2__* p; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_27__ {unsigned int i_visible_height; unsigned int i_height; int i_sar_num; int i_sar_den; int /*<<< orphan*/  orientation; int /*<<< orphan*/  i_width; int /*<<< orphan*/  i_visible_width; } ;
struct TYPE_28__ {TYPE_17__ video; } ;
struct TYPE_31__ {TYPE_1__ fmt_out; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_34__ {unsigned int output_height; scalar_t__ output_scanline; int /*<<< orphan*/  output_width; int /*<<< orphan*/  out_color_space; } ;
struct TYPE_32__ {scalar_t__* p_row_pointers; TYPE_8__ p_jpeg; int /*<<< orphan*/  setjmp_buffer; } ;
typedef  TYPE_5__ decoder_sys_t ;
struct TYPE_33__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_6__ block_t ;
struct TYPE_29__ {unsigned int i_pitch; scalar_t__ p_pixels; } ;
typedef  int /*<<< orphan*/  JSAMPROW ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int /*<<< orphan*/  EXIF_JPEG_MARKER ; 
 int /*<<< orphan*/  JCS_RGB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int VLCDEC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC18 (unsigned int,int) ; 

__attribute__((used)) static int FUNC19(decoder_t *p_dec, block_t *p_block)
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    picture_t *p_pic = 0;

    p_sys->p_row_pointers = NULL;

    if (!p_block) /* No Drain */
        return VLCDEC_SUCCESS;

    if (p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        FUNC1(p_block);
        return VLCDEC_SUCCESS;
    }

    /* libjpeg longjmp's there in case of error */
    if (FUNC17(p_sys->setjmp_buffer))
    {
        goto error;
    }

    FUNC8(&p_sys->p_jpeg);
    FUNC11(&p_sys->p_jpeg, p_block->p_buffer, p_block->i_buffer);
    FUNC14( &p_sys->p_jpeg, EXIF_JPEG_MARKER, 0xffff );
    FUNC12(&p_sys->p_jpeg, TRUE);

    p_sys->p_jpeg.out_color_space = JCS_RGB;

    FUNC15(&p_sys->p_jpeg);

    /* Set output properties */
    p_dec->fmt_out.video.i_visible_width  = p_dec->fmt_out.video.i_width  = p_sys->p_jpeg.output_width;
    p_dec->fmt_out.video.i_visible_height = p_dec->fmt_out.video.i_height = p_sys->p_jpeg.output_height;
    p_dec->fmt_out.video.i_sar_num = 1;
    p_dec->fmt_out.video.i_sar_den = 1;

    int i_otag; /* Orientation tag has valid range of 1-8. 1 is normal orientation, 0 = unspecified = normal */
    i_otag = FUNC6( &p_sys->p_jpeg );
    if ( i_otag > 1 )
    {
        FUNC16( p_dec, "Jpeg orientation is %d", i_otag );
        p_dec->fmt_out.video.orientation = FUNC0( i_otag );
    }
    FUNC7(&p_sys->p_jpeg, &p_dec->fmt_out.video);

    /* Get a new picture */
    if (FUNC4(p_dec))
    {
        goto error;
    }
    p_pic = FUNC2(p_dec);
    if (!p_pic)
    {
        goto error;
    }

    /* Decode picture */
    p_sys->p_row_pointers = FUNC18(p_sys->p_jpeg.output_height, sizeof(JSAMPROW));
    if (!p_sys->p_row_pointers)
    {
        goto error;
    }
    for (unsigned i = 0; i < p_sys->p_jpeg.output_height; i++) {
        p_sys->p_row_pointers[i] = p_pic->p->p_pixels + p_pic->p->i_pitch * i;
    }

    while (p_sys->p_jpeg.output_scanline < p_sys->p_jpeg.output_height)
    {
        FUNC13(&p_sys->p_jpeg,
                p_sys->p_row_pointers + p_sys->p_jpeg.output_scanline,
                p_sys->p_jpeg.output_height - p_sys->p_jpeg.output_scanline);
    }

    FUNC10(&p_sys->p_jpeg);
    FUNC9(&p_sys->p_jpeg);
    FUNC5(p_sys->p_row_pointers);

    p_pic->date = p_block->i_pts != VLC_TICK_INVALID ? p_block->i_pts : p_block->i_dts;

    FUNC1(p_block);
    FUNC3( p_dec, p_pic );
    return VLCDEC_SUCCESS;

error:

    FUNC9(&p_sys->p_jpeg);
    FUNC5(p_sys->p_row_pointers);

    FUNC1(p_block);
    return VLCDEC_SUCCESS;
}