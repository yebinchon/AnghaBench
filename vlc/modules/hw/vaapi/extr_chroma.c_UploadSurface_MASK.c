#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_10__ {int /*<<< orphan*/  cache; int /*<<< orphan*/  dest_pics; int /*<<< orphan*/  dpy; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  image_id; int /*<<< orphan*/  buf; } ;
typedef  TYPE_3__ VAImage ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t *
FUNC12(filter_t *filter, picture_t *src)
{
    filter_sys_t   *p_sys = filter->p_sys;
    VADisplay const va_dpy = p_sys->dpy;
    VAImage         dest_img;
    void *          dest_buf;
    picture_t *     dest_pic = FUNC5(p_sys->dest_pics);

    if (!dest_pic)
    {
        FUNC2(filter, "cannot retrieve picture from the dest pics pool");
        goto ret;
    }
    FUNC9(dest_pic);
    FUNC3(dest_pic, src);

    if (FUNC6(FUNC1(filter), va_dpy,
                              FUNC10(dest_pic), &dest_img)
        || FUNC8(FUNC1(filter), va_dpy,
                               dest_img.buf, &dest_buf))
        goto error;

    FUNC0(&dest_img, dest_buf, dest_pic,
                           src, &p_sys->cache);

    if (FUNC11(FUNC1(filter), va_dpy, dest_img.buf)
        || FUNC7(FUNC1(filter),
                                  va_dpy, dest_img.image_id))
        goto error;

ret:
    FUNC4(src);
    return dest_pic;

error:
    FUNC4(dest_pic);
    dest_pic = NULL;
    goto ret;
}