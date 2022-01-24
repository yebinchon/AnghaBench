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
struct swaynag_type {int bar_border_thickness; int message_padding; int details_border_thickness; int button_border_thickness; int button_gap; int button_gap_close; int button_margin_right; int button_padding; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct swaynag_type* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

struct swaynag_type *FUNC3(const char *name) {
	struct swaynag_type *type = FUNC0(1, sizeof(struct swaynag_type));
	if (!type) {
		FUNC2("Failed to allocate type: %s", name);
	}
	type->name = FUNC1(name);
	type->bar_border_thickness = -1;
	type->message_padding = -1;
	type->details_border_thickness = -1;
	type->button_border_thickness = -1;
	type->button_gap = -1;
	type->button_gap_close = -1;
	type->button_margin_right = -1;
	type->button_padding = -1;
	return type;
}