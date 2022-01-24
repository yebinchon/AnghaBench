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

/* Type definitions */
struct TYPE_27__ {int i_planes; int /*<<< orphan*/  date; TYPE_4__* p; } ;
typedef  TYPE_5__ picture_t ;
struct TYPE_23__ {int i_visible_height; int /*<<< orphan*/  i_visible_width; } ;
struct TYPE_24__ {TYPE_1__ video; } ;
struct TYPE_28__ {TYPE_2__ fmt_in; TYPE_7__* p_sys; } ;
typedef  TYPE_6__ encoder_t ;
struct TYPE_31__ {int image_height; int input_components; int next_scanline; int max_v_samp_factor; TYPE_3__* comp_info; int /*<<< orphan*/  do_fancy_downsampling; int /*<<< orphan*/  raw_data_in; int /*<<< orphan*/  in_color_space; int /*<<< orphan*/  image_width; } ;
struct TYPE_29__ {TYPE_9__ p_jpeg; int /*<<< orphan*/  i_quality; int /*<<< orphan*/  setjmp_buffer; int /*<<< orphan*/  i_blocksize; } ;
typedef  TYPE_7__ encoder_sys_t ;
struct TYPE_30__ {unsigned long i_buffer; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_8__ block_t ;
struct TYPE_26__ {int i_pitch; int /*<<< orphan*/ **************** p_pixels; } ;
struct TYPE_25__ {int v_samp_factor; } ;
typedef  int /*<<< orphan*/  JSAMPROW ;
typedef  int /*<<< orphan*/ ********** JSAMPIMAGE ;
typedef  int /*<<< orphan*/  JSAMPARRAY ;

/* Variables and functions */
 int DCTSIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JCS_YCbCr ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_8__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **********) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,int /*<<< orphan*/ **********,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 void* FUNC14 (int,int) ; 

__attribute__((used)) static block_t *FUNC15(encoder_t *p_enc, picture_t *p_pic)
{
    encoder_sys_t *p_sys = p_enc->p_sys;

    if (FUNC13(!p_pic))
    {
        return NULL;
    }
    block_t *p_block = FUNC0(p_sys->i_blocksize);
    if (p_block == NULL)
    {
        return NULL;
    }

    JSAMPIMAGE p_row_pointers = NULL;
    unsigned long size = p_block->i_buffer;

    /* libjpeg longjmp's there in case of error */
    if (FUNC12(p_sys->setjmp_buffer))
    {
        goto error;
    }

    FUNC3(&p_sys->p_jpeg);
    FUNC6(&p_sys->p_jpeg, &p_block->p_buffer, &size);

    p_sys->p_jpeg.image_width = p_enc->fmt_in.video.i_visible_width;
    p_sys->p_jpeg.image_height = p_enc->fmt_in.video.i_visible_height;
    p_sys->p_jpeg.input_components = 3;
    p_sys->p_jpeg.in_color_space = JCS_YCbCr;

    FUNC8(&p_sys->p_jpeg);
    FUNC7(&p_sys->p_jpeg, JCS_YCbCr);

    p_sys->p_jpeg.raw_data_in = TRUE;
#if JPEG_LIB_VERSION >= 70
    p_sys->p_jpeg.do_fancy_downsampling = FALSE;
#endif

    FUNC9(&p_sys->p_jpeg, p_sys->i_quality, TRUE);

    FUNC10(&p_sys->p_jpeg, TRUE);

    /* Encode picture */
    p_row_pointers = FUNC14(p_pic->i_planes, sizeof(JSAMPARRAY));
    if (p_row_pointers == NULL)
    {
        goto error;
    }

    for (int i = 0; i < p_pic->i_planes; i++)
    {
        p_row_pointers[i] = FUNC14(p_sys->p_jpeg.comp_info[i].v_samp_factor, sizeof(JSAMPROW) * DCTSIZE);
    }

    while (p_sys->p_jpeg.next_scanline < p_sys->p_jpeg.image_height)
    {
        for (int i = 0; i < p_pic->i_planes; i++)
        {
            int i_offset = p_sys->p_jpeg.next_scanline * p_sys->p_jpeg.comp_info[i].v_samp_factor / p_sys->p_jpeg.max_v_samp_factor;

            for (int j = 0; j < p_sys->p_jpeg.comp_info[i].v_samp_factor * DCTSIZE; j++)
            {
                p_row_pointers[i][j] = p_pic->p[i].p_pixels + p_pic->p[i].i_pitch * (i_offset + j);
            }
        }
        FUNC11(&p_sys->p_jpeg, p_row_pointers, p_sys->p_jpeg.max_v_samp_factor * DCTSIZE);
    }

    FUNC5(&p_sys->p_jpeg);
    FUNC4(&p_sys->p_jpeg);

    for (int i = 0; i < p_pic->i_planes; i++)
    {
        FUNC2(&p_row_pointers[i]);
    }
    FUNC2(p_row_pointers);

    p_block->i_buffer = size;
    p_block->i_dts = p_block->i_pts = p_pic->date;

    return p_block;

error:
    FUNC4(&p_sys->p_jpeg);

    if (p_row_pointers != NULL)
    {
        for (int i = 0; i < p_pic->i_planes; i++)
        {
            FUNC2(&p_row_pointers[i]);
        }
    }
    FUNC2(p_row_pointers);

    FUNC1(p_block);

    return NULL;
}