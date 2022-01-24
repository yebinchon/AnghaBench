#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_view {TYPE_2__* surface; int /*<<< orphan*/  saved_buffer_height; int /*<<< orphan*/  saved_buffer_width; scalar_t__ saved_buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {TYPE_1__ current; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_view*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

void FUNC4(struct sway_view *view) {
	if (!FUNC0(!view->saved_buffer, "Didn't expect saved buffer")) {
		FUNC1(view);
	}
	if (view->surface && FUNC3(view->surface)) {
		view->saved_buffer = FUNC2(view->surface->buffer);
		view->saved_buffer_width = view->surface->current.width;
		view->saved_buffer_height = view->surface->current.height;
	}
}