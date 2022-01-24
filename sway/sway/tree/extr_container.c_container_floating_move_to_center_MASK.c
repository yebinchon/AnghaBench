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
struct sway_workspace {int x; int width; int y; int height; } ;
struct sway_container {int width; int height; scalar_t__ y; scalar_t__ x; struct sway_workspace* workspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_container*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_container*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct sway_container *con) {
	if (!FUNC2(FUNC1(con),
			"Expected a floating container")) {
		return;
	}
	struct sway_workspace *ws = con->workspace;
	double new_lx = ws->x + (ws->width - con->width) / 2;
	double new_ly = ws->y + (ws->height - con->height) / 2;
	FUNC0(con, new_lx - con->x, new_ly - con->y);
}