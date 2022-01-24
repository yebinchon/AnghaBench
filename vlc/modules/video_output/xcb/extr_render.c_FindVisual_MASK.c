#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_visualid_t ;
typedef  int /*<<< orphan*/  xcb_setup_t ;
typedef  int /*<<< orphan*/  xcb_screen_t ;
typedef  int /*<<< orphan*/  xcb_render_query_pict_formats_reply_t ;
struct TYPE_8__ {scalar_t__ format; int /*<<< orphan*/  visual; } ;
typedef  TYPE_1__ xcb_render_pictvisual_t ;
struct TYPE_9__ {scalar_t__ rem; TYPE_1__* data; } ;
typedef  TYPE_2__ xcb_render_pictvisual_iterator_t ;
typedef  int /*<<< orphan*/  xcb_render_pictscreen_t ;
typedef  scalar_t__ xcb_render_pictformat_t ;
typedef  int /*<<< orphan*/  xcb_render_pictdepth_t ;
struct TYPE_10__ {scalar_t__ rem; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ xcb_render_pictdepth_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static xcb_visualid_t
FUNC5(const xcb_setup_t *setup, const xcb_screen_t *scr,
           const xcb_render_query_pict_formats_reply_t *r,
           xcb_render_pictformat_t fmt_id)
{
    const xcb_render_pictscreen_t *rs = FUNC0(setup, scr, r);
    if (rs == NULL)
        return 0;

    xcb_render_pictdepth_iterator_t rdi =
        FUNC3(rs);

    while (rdi.rem > 0) {
        const xcb_render_pictdepth_t *rd = rdi.data;
        xcb_render_pictvisual_iterator_t rvi =
            FUNC2(rd);

        while (rvi.rem > 0) {
            const xcb_render_pictvisual_t *pv = rvi.data;

            if (pv->format == fmt_id)
                return pv->visual;

            FUNC4(&rvi);
        }
        FUNC1(&rdi);
    }
    return 0;
}