#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sway_output {TYPE_1__* wlr_output; } ;
typedef  int /*<<< orphan*/  identifier ;
struct TYPE_6__ {TYPE_2__* outputs; } ;
struct TYPE_5__ {int length; struct sway_output** items; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct sway_output*) ; 
 TYPE_3__* root ; 
 scalar_t__ FUNC1 (char*,char const*) ; 

struct sway_output *FUNC2(const char *name_or_id) {
	for (int i = 0; i < root->outputs->length; ++i) {
		struct sway_output *output = root->outputs->items[i];
		char identifier[128];
		FUNC0(identifier, sizeof(identifier), output);
		if (FUNC1(identifier, name_or_id) == 0
				|| FUNC1(output->wlr_output->name, name_or_id) == 0) {
			return output;
		}
	}
	return NULL;
}