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
struct wlr_box {double width; double height; } ;
struct sway_container {double width; double height; double content_width; double content_height; int /*<<< orphan*/  view; int /*<<< orphan*/  workspace; } ;

/* Variables and functions */
 struct wlr_box* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int*) ; 
 double FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wlr_box*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct wlr_box*) ; 

void FUNC8(struct sway_container *con) {
	if (!FUNC6(con->workspace, "Expected a container on a workspace")) {
		return;
	}

	int min_width, max_width, min_height, max_height;
	FUNC2(&min_width, &max_width,
			&min_height, &max_height);
	struct wlr_box *box = FUNC0(1, sizeof(struct wlr_box));
	FUNC7(con->workspace, box);

	double width = FUNC3(min_width, FUNC4(box->width * 0.5, max_width));
	double height = FUNC3(min_height, FUNC4(box->height * 0.75, max_height));
	if (!con->view) {
		con->width = width;
		con->height = height;
	} else {
		con->content_width = width;
		con->content_height = height;
		FUNC1(con);
	}

	FUNC5(box);
}