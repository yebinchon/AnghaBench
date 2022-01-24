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
struct sway_cursor {int hidden; char* image; int /*<<< orphan*/  image_client; int /*<<< orphan*/  hotspot_y; int /*<<< orphan*/  hotspot_x; scalar_t__ image_surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_cursor*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct sway_cursor *cursor) {
	cursor->hidden = false;
	if (cursor->image_surface) {
		FUNC2(cursor,
				cursor->image_surface,
				cursor->hotspot_x,
				cursor->hotspot_y,
				cursor->image_client);
	} else {
		const char *image = cursor->image;
		cursor->image = NULL;
		FUNC1(cursor, image, cursor->image_client);
	}
	FUNC0(cursor);
}