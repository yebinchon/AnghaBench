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
struct TYPE_13__ {int scroll_region_bot; int char_height; scalar_t__ scroll_region_right; scalar_t__ scroll_region_left; int /*<<< orphan*/  vimTextArea; } ;
struct TYPE_12__ {int y; scalar_t__ x; } ;
struct TYPE_10__ {scalar_t__ y; void* x; } ;
struct TYPE_9__ {int /*<<< orphan*/  y; void* x; } ;
struct TYPE_11__ {TYPE_2__ lr; TYPE_1__ ul; } ;
typedef  TYPE_3__ PhRect_t ;
typedef  TYPE_4__ PhPoint_t ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__ gui ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  gui_ph_raw_offset ; 

void
FUNC11(int row, int num_lines)
{
    PhRect_t    rect;
    PhPoint_t   delta;

    rect.ul.x = FUNC0(gui.scroll_region_left);
    rect.ul.y = FUNC1(row + num_lines);

    rect.lr.x = FUNC0(gui.scroll_region_right + 1) - 1;
    rect.lr.y = FUNC1(gui.scroll_region_bot + 1) - 1;

    FUNC7(gui.vimTextArea, &gui_ph_raw_offset);
    FUNC4(&gui_ph_raw_offset, FUNC8(gui.vimTextArea, NULL));
    FUNC5(&rect, &gui_ph_raw_offset);

    delta.x = 0;
    delta.y = -num_lines * gui.char_height;

    FUNC2();

    FUNC3(FUNC9(FUNC6(gui.vimTextArea)), &rect, &delta);

    FUNC10(
	gui.scroll_region_bot - num_lines + 1,
	gui.scroll_region_left,
	gui.scroll_region_bot,
	gui.scroll_region_right);
}