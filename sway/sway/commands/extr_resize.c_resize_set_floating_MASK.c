#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_container {int width; int x; int height; int y; int content_x; int content_y; int content_width; int content_height; TYPE_1__* workspace; } ;
struct resize_amount {int amount; int unit; } ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
#define  RESIZE_UNIT_DEFAULT 131 
#define  RESIZE_UNIT_INVALID 130 
#define  RESIZE_UNIT_PPT 129 
#define  RESIZE_UNIT_PX 128 
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,int*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

__attribute__((used)) static struct cmd_results *FUNC7(struct sway_container *con,
		struct resize_amount *width, struct resize_amount *height) {
	int min_width, max_width, min_height, max_height, grow_width = 0, grow_height = 0;
	FUNC3(&min_width, &max_width,
			&min_height, &max_height);

	if (width->amount) {
		switch (width->unit) {
		case RESIZE_UNIT_PPT:
			if (FUNC2(con)) {
				return FUNC1(CMD_FAILURE,
						"Cannot resize a hidden scratchpad container by ppt");
			}
			// Convert to px
			width->amount = con->workspace->width * width->amount / 100;
			width->unit = RESIZE_UNIT_PX;
			// Falls through
		case RESIZE_UNIT_PX:
		case RESIZE_UNIT_DEFAULT:
			width->amount = FUNC4(min_width, FUNC5(width->amount, max_width));
			grow_width = width->amount - con->width;
			con->x -= grow_width / 2;
			con->width = width->amount;
			break;
		case RESIZE_UNIT_INVALID:
			FUNC6(false, "invalid width unit");
			break;
		}
	}

	if (height->amount) {
		switch (height->unit) {
		case RESIZE_UNIT_PPT:
			if (FUNC2(con)) {
				return FUNC1(CMD_FAILURE,
						"Cannot resize a hidden scratchpad container by ppt");
			}
			// Convert to px
			height->amount = con->workspace->height * height->amount / 100;
			height->unit = RESIZE_UNIT_PX;
			// Falls through
		case RESIZE_UNIT_PX:
		case RESIZE_UNIT_DEFAULT:
			height->amount = FUNC4(min_height, FUNC5(height->amount, max_height));
			grow_height = height->amount - con->height;
			con->y -= grow_height / 2;
			con->height = height->amount;
			break;
		case RESIZE_UNIT_INVALID:
			FUNC6(false, "invalid height unit");
			break;
		}
	}

	con->content_x -= grow_width / 2;
	con->content_y -= grow_height / 2;
	con->content_width += grow_width;
	con->content_height += grow_height;

	FUNC0(con);

	return FUNC1(CMD_SUCCESS, NULL);
}