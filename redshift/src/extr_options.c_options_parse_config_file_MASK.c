#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  options_t ;
typedef  int /*<<< orphan*/  location_provider_t ;
typedef  int /*<<< orphan*/  gamma_method_t ;
typedef  int /*<<< orphan*/  config_ini_state_t ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ config_ini_setting_t ;
struct TYPE_5__ {TYPE_1__* settings; } ;
typedef  TYPE_2__ config_ini_section_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

void
FUNC3(
	options_t *options, config_ini_state_t *config_state,
	const gamma_method_t *gamma_methods,
	const location_provider_t *location_providers)
{
	/* Read global config settings. */
	config_ini_section_t *section = FUNC0(
		config_state, "redshift");
	if (section == NULL) return;

	config_ini_setting_t *setting = section->settings;
	while (setting != NULL) {
		int r = FUNC2(
			setting->name, setting->value, options,
			gamma_methods, location_providers);
		if (r < 0) FUNC1(EXIT_FAILURE);

		setting = setting->next;
	}
}