#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* sections; } ;
typedef  TYPE_1__ config_ini_state_t ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* name; struct TYPE_7__* value; struct TYPE_7__* settings; } ;
typedef  TYPE_2__ config_ini_setting_t ;
typedef  TYPE_2__ config_ini_section_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void
FUNC1(config_ini_state_t *state)
{
	config_ini_section_t *section = state->sections;

	while (section != NULL) {
		config_ini_setting_t *setting = section->settings;
		config_ini_section_t *section_prev = section;

		while (setting != NULL) {
			config_ini_setting_t *setting_prev = setting;
			FUNC0(setting->name);
			FUNC0(setting->value);
			setting = setting->next;
			FUNC0(setting_prev);
		}

		FUNC0(section->name);
		section = section->next;
		FUNC0(section_prev);
	}
}