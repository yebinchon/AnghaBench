#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  vdp_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  picture_pool_t ;
typedef  int /*<<< orphan*/  VdpRGBAFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

picture_pool_t *FUNC4(vdp_t *vdp, VdpRGBAFormat rgb_fmt,
                                           const video_format_t *restrict fmt,
                                           unsigned requested_count)
{
    picture_t *pics[requested_count];
    unsigned count = 0;

    while (count < requested_count)
    {
        pics[count] = FUNC3(vdp, rgb_fmt, fmt);
        if (pics[count] == NULL)
            break;
        count++;
    }

    if (count == 0)
        return NULL;

    picture_pool_t *pool = FUNC1(count, pics);
    if (FUNC2(pool == NULL))
        while (count > 0)
            FUNC0(pics[--count]);
    return pool;
}