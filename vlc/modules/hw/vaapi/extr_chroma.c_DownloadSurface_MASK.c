#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_25__ {TYPE_1__ format; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_26__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_27__ {int derive_failed; int image_fallback_failed; int /*<<< orphan*/  cache; } ;
typedef  TYPE_4__ filter_sys_t ;
typedef  int /*<<< orphan*/  VASurfaceID ;
typedef  scalar_t__ VAImageID ;
struct TYPE_28__ {scalar_t__ image_id; int /*<<< orphan*/  buf; } ;
typedef  TYPE_5__ VAImage ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_5__*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ VA_INVALID_ID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t *
FUNC15(filter_t *filter, picture_t *src_pic)
{
    filter_sys_t *const filter_sys = filter->p_sys;
    VADisplay           va_dpy = FUNC12(src_pic);
    VAImage             src_img;
    void *              src_buf;

    picture_t *dest = FUNC3(filter);
    if (!dest)
    {
        FUNC4(filter, "filter_NewPicture failed");
        goto ret;
    }

    VAImageID image_fallback_id = VA_INVALID_ID;
    VASurfaceID surface = FUNC13(src_pic);
    if (FUNC8(va_dpy, surface))
        goto error;

    if (filter_sys->derive_failed ||
        FUNC9(FUNC2(filter), va_dpy, surface, &src_img))
    {
        if (filter_sys->image_fallback_failed)
            goto error;

        filter_sys->derive_failed = true;

        VAImage image_fallback;
        if (FUNC0(filter, src_pic, va_dpy, &image_fallback))
        {
            filter_sys->image_fallback_failed = true;
            goto error;
        }
        image_fallback_id = image_fallback.image_id;

        if (FUNC7(va_dpy, surface, 0, 0, src_pic->format.i_width,
                       src_pic->format.i_height, image_fallback_id))
        {
            filter_sys->image_fallback_failed = true;
            goto error;
        }
        src_img = image_fallback;
    }

    if (FUNC11(FUNC2(filter), va_dpy, src_img.buf, &src_buf))
        goto error;

    FUNC1(dest, &src_img, src_buf, &filter_sys->cache);

    FUNC14(FUNC2(filter), va_dpy, src_img.buf);
    FUNC10(FUNC2(filter), va_dpy, src_img.image_id);

    FUNC5(dest, src_pic);
ret:
    FUNC6(src_pic);
    return dest;

error:
    if (image_fallback_id != VA_INVALID_ID)
        FUNC10(FUNC2(filter), va_dpy, image_fallback_id);

    FUNC6(dest);
    dest = NULL;
    goto ret;
}