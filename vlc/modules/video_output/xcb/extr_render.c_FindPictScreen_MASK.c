#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_setup_t ;
typedef  int /*<<< orphan*/  xcb_screen_t ;
struct TYPE_7__ {scalar_t__ rem; int /*<<< orphan*/  const* data; } ;
typedef  TYPE_1__ xcb_screen_iterator_t ;
typedef  int /*<<< orphan*/  xcb_render_query_pict_formats_reply_t ;
typedef  int /*<<< orphan*/  xcb_render_pictscreen_t ;
struct TYPE_8__ {scalar_t__ rem; int /*<<< orphan*/  const* data; } ;
typedef  TYPE_2__ xcb_render_pictscreen_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const xcb_render_pictscreen_t *
FUNC6(const xcb_setup_t *setup, const xcb_screen_t *scr,
               const xcb_render_query_pict_formats_reply_t *r)
{
    xcb_screen_iterator_t si = FUNC5(setup);
    unsigned n = 0;

    while (si.data != scr) {
        FUNC0(si.rem > 0);
        n++;
        FUNC4(&si);
    }

    xcb_render_pictscreen_iterator_t rsi =
        FUNC3(r);

    while (n > 0) {
        if (FUNC1(rsi.rem == 0))
            return NULL; /* buggy server */

        n--;
        FUNC2(&rsi);
    }
    return rsi.data;
}