#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  link; } ;
struct TYPE_14__ {int /*<<< orphan*/  link; } ;
struct TYPE_13__ {int /*<<< orphan*/  link; } ;
struct TYPE_24__ {int /*<<< orphan*/  link; } ;
struct TYPE_23__ {int /*<<< orphan*/  link; } ;
struct TYPE_22__ {int /*<<< orphan*/  link; } ;
struct TYPE_21__ {int /*<<< orphan*/  link; } ;
struct TYPE_20__ {int /*<<< orphan*/  link; } ;
struct TYPE_19__ {int /*<<< orphan*/  link; } ;
struct TYPE_18__ {int /*<<< orphan*/  link; } ;
struct TYPE_17__ {int /*<<< orphan*/  link; } ;
struct TYPE_16__ {int /*<<< orphan*/  link; } ;
struct sway_cursor {int /*<<< orphan*/  cursor; int /*<<< orphan*/  xcursor_manager; TYPE_12__ request_set_cursor; TYPE_11__ tool_button; TYPE_10__ tool_tip; TYPE_9__ tool_axis; TYPE_8__ touch_motion; TYPE_7__ touch_up; TYPE_6__ touch_down; TYPE_5__ frame; TYPE_4__ axis; TYPE_3__ button; TYPE_2__ motion_absolute; TYPE_1__ motion; int /*<<< orphan*/  hide_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct sway_cursor *cursor) {
	if (!cursor) {
		return;
	}

	FUNC1(cursor->hide_source);

	FUNC2(&cursor->motion.link);
	FUNC2(&cursor->motion_absolute.link);
	FUNC2(&cursor->button.link);
	FUNC2(&cursor->axis.link);
	FUNC2(&cursor->frame.link);
	FUNC2(&cursor->touch_down.link);
	FUNC2(&cursor->touch_up.link);
	FUNC2(&cursor->touch_motion.link);
	FUNC2(&cursor->tool_axis.link);
	FUNC2(&cursor->tool_tip.link);
	FUNC2(&cursor->tool_button.link);
	FUNC2(&cursor->request_set_cursor.link);

	FUNC4(cursor->xcursor_manager);
	FUNC3(cursor->cursor);
	FUNC0(cursor);
}