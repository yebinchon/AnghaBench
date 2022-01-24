#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_10__ {unsigned char* p_pixels; int /*<<< orphan*/  i_lines; int /*<<< orphan*/  i_pitch; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_11__ {scalar_t__ i_planes; TYPE_2__* p; TYPE_5__* p_sys; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_9__ {int /*<<< orphan*/  destroy; } ;
struct TYPE_12__ {scalar_t__ extra; TYPE_3__ picture; TYPE_1__ gc; } ;
typedef  TYPE_4__ picture_priv_t ;
struct TYPE_13__ {unsigned char* base; size_t size; scalar_t__ offset; int /*<<< orphan*/  fd; } ;
typedef  TYPE_5__ picture_buffer_t ;

/* Variables and functions */
 int PICTURE_PLANE_MAX ; 
 size_t PICTURE_SW_SIZE_MAX ; 
 int FUNC0 (size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  picture_DestroyFromFormat ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int) ; 

picture_t *FUNC6(const video_format_t *restrict fmt)
{
    picture_priv_t *priv = FUNC4(fmt, sizeof (picture_buffer_t));
    if (FUNC5(priv == NULL))
        return NULL;

    priv->gc.destroy = picture_DestroyFromFormat;

    picture_t *pic = &priv->picture;
    if (pic->i_planes == 0) {
        pic->p_sys = NULL;
        return pic;
    }

    /* Calculate how big the new image should be */
    size_t plane_sizes[PICTURE_PLANE_MAX];
    size_t pic_size = 0;

    for (int i = 0; i < pic->i_planes; i++)
    {
        const plane_t *p = &pic->p[i];

        if (FUNC5(FUNC2(p->i_pitch, p->i_lines, &plane_sizes[i]))
         || FUNC5(FUNC0(pic_size, plane_sizes[i], &pic_size)))
            goto error;
    }

    if (FUNC5(pic_size >= PICTURE_SW_SIZE_MAX))
        goto error;

    picture_buffer_t *res = (void *)priv->extra;

    unsigned char *buf = FUNC3(&res->fd, pic_size);
    if (FUNC5(buf == NULL))
        goto error;

    res->base = buf;
    res->size = pic_size;
    res->offset = 0;
    pic->p_sys = res;

    /* Fill the p_pixels field for each plane */
    for (int i = 0; i < pic->i_planes; i++)
    {
        pic->p[i].p_pixels = buf;
        buf += plane_sizes[i];
    }

    return pic;
error:
    FUNC1(pic);
    return NULL;
}