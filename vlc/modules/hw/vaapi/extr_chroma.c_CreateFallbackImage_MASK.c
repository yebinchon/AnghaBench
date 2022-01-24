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
struct TYPE_9__ {int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_10__ {TYPE_1__ format; } ;
typedef  TYPE_2__ picture_t ;
typedef  int /*<<< orphan*/  filter_t ;
struct TYPE_11__ {scalar_t__ fourcc; } ;
typedef  TYPE_3__ VAImageFormat ;
typedef  int /*<<< orphan*/  VAImage ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 scalar_t__ VA_FOURCC_NV12 ; 
 scalar_t__ VA_FOURCC_P010 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int*) ; 
 TYPE_3__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(filter_t *filter, picture_t *src_pic,
                               VADisplay va_dpy, VAImage *image_fallback)
{
    int count = FUNC3(va_dpy);

    VAImageFormat *fmts = FUNC5(count, sizeof (*fmts));
    if (FUNC2(fmts == NULL))
        return VLC_ENOMEM;

    if (FUNC4(va_dpy, fmts, &count))
    {
        FUNC1(fmts);
        return VLC_EGENERIC;
    }

    int i;
    for (i = 0; i < count; i++)
        if (fmts[i].fourcc == VA_FOURCC_NV12
         || fmts[i].fourcc == VA_FOURCC_P010)
            break;

    int ret;
    if ((fmts[i].fourcc == VA_FOURCC_NV12 || fmts[i].fourcc == VA_FOURCC_P010)
     && !FUNC6(FUNC0(filter), va_dpy, &fmts[i],
                               src_pic->format.i_width, src_pic->format.i_height,
                               image_fallback))
        ret = VLC_SUCCESS;
    else
        ret = VLC_EGENERIC;

    FUNC1(fmts);

    return ret;
}