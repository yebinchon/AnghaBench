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
struct sway_view {void* natural_height; void* natural_width; } ;
struct sway_container {void* content_height; void* content_width; struct sway_view* view; void* height; void* width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 

__attribute__((used)) static void FUNC4(struct sway_container *con) {
	int min_width, max_width, min_height, max_height;
	FUNC1(&min_width, &max_width,
			&min_height, &max_height);
	if (!con->view) {
		con->width = FUNC2(min_width, FUNC3(con->width, max_width));
		con->height = FUNC2(min_height, FUNC3(con->height, max_height));
	} else {
		struct sway_view *view = con->view;
		con->content_width =
			FUNC2(min_width, FUNC3(view->natural_width, max_width));
		con->content_height =
			FUNC2(min_height, FUNC3(view->natural_height, max_height));
		FUNC0(con);
	}
}