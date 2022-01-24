#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xcb_visualid_t ;
typedef  int /*<<< orphan*/  xcb_setup_t ;
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_6__ {scalar_t__ depth; } ;
typedef  TYPE_1__ xcb_depth_t ;
struct TYPE_7__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef  TYPE_2__ xcb_depth_iterator_t ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static xcb_visualid_t FUNC4(const xcb_setup_t *setup,
                                     const xcb_screen_t *screen,
                                     uint8_t *restrict bits,
                                     video_format_t *restrict fmtp)
{
    xcb_visualid_t visual = 0;

    *bits = 0;

    for (xcb_depth_iterator_t it = FUNC3(screen);
         it.rem > 0;
         FUNC2(&it))
    {
        const xcb_depth_t *depth = it.data;
        video_format_t fmt;
        xcb_visualid_t vid;

        if (depth->depth <= *bits)
            continue; /* no better than earlier depth */

        FUNC1(&fmt, fmtp);
        vid = FUNC0(setup, depth, &fmt);
        if (vid != 0)
        {
            *bits = depth->depth;
            *fmtp = fmt;
            visual = vid;
        }
    }
    return visual;
}