#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct AVCodecContext {scalar_t__ pix_fmt; TYPE_3__* opaque; } ;
struct TYPE_14__ {int i_planes; TYPE_1__* p; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_16__ {int /*<<< orphan*/  b_dr_failure; } ;
typedef  TYPE_4__ decoder_sys_t ;
struct TYPE_17__ {int width; int height; int* linesize; TYPE_2__* opaque; int /*<<< orphan*/ ** buf; int /*<<< orphan*/ ** data; } ;
struct TYPE_13__ {int i_pitch; int i_pixel_pitch; int i_lines; int /*<<< orphan*/ * p_pixels; } ;
typedef  TYPE_5__ AVFrame ;

/* Variables and functions */
 int AV_NUM_DATA_POINTERS ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 scalar_t__ PICTURE_PLANE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct AVCodecContext*,int*,int*,int*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  lavc_ReleaseFrame ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct AVCodecContext *ctx, AVFrame *frame)
{
    decoder_t *dec = ctx->opaque;
    decoder_sys_t *sys = dec->p_sys;

    if (ctx->pix_fmt == AV_PIX_FMT_PAL8)
        return -1;

    picture_t *pic = FUNC5(dec);
    if (pic == NULL)
        return -1;

    int width = frame->width;
    int height = frame->height;
    int aligns[AV_NUM_DATA_POINTERS];

    FUNC4(ctx, &width, &height, aligns);

    /* Check that the picture is suitable for libavcodec */
    FUNC0(pic->p[0].i_pitch >= width * pic->p[0].i_pixel_pitch);
    FUNC0(pic->p[0].i_lines >= height);

    for (int i = 0; i < pic->i_planes; i++)
    {
        if (pic->p[i].i_pitch % aligns[i])
        {
            if (!FUNC1(&sys->b_dr_failure, true))
                FUNC6(dec, "plane %d: pitch not aligned (%d%%%d): disabling direct rendering",
                         i, pic->p[i].i_pitch, aligns[i]);
            goto error;
        }
        if (((uintptr_t)pic->p[i].p_pixels) % aligns[i])
        {
            if (!FUNC1(&sys->b_dr_failure, true))
                FUNC6(dec, "plane %d not aligned: disabling direct rendering", i);
            goto error;
        }
    }

    /* Allocate buffer references and initialize planes */
    FUNC0(pic->i_planes < PICTURE_PLANE_MAX);
    FUNC9(PICTURE_PLANE_MAX <= AV_NUM_DATA_POINTERS, "Oops!");

    for (int i = 0; i < pic->i_planes; i++)
    {
        uint8_t *data = pic->p[i].p_pixels;
        int size = pic->p[i].i_pitch * pic->p[i].i_lines;

        frame->data[i] = data;
        frame->linesize[i] = pic->p[i].i_pitch;
        frame->buf[i] = FUNC2(data, size, lavc_ReleaseFrame,
                                         pic, 0);
        if (FUNC10(frame->buf[i] == NULL))
        {
            while (i > 0)
                FUNC3(&frame->buf[--i]);
            goto error;
        }
        FUNC7(pic);
    }

    frame->opaque = pic;
    /* The loop above held one reference to the picture for each plane. */
    FUNC0(pic->i_planes > 0);
    FUNC8(pic);
    return 0;
error:
    FUNC8(pic);
    return -1;
}