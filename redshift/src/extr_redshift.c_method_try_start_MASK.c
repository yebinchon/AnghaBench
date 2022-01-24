#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gamma_state_t ;
struct TYPE_6__ {int (* init ) (int /*<<< orphan*/ **) ;char* name; int (* set_option ) (int /*<<< orphan*/ *,char const*,char*) ;int (* start ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ gamma_method_t ;
typedef  int /*<<< orphan*/  config_ini_state_t ;
struct TYPE_7__ {char const* name; char* value; struct TYPE_7__* next; } ;
typedef  TYPE_2__ config_ini_setting_t ;
struct TYPE_8__ {TYPE_2__* settings; } ;
typedef  TYPE_3__ config_ini_section_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(const gamma_method_t *method,
		 gamma_state_t **state, config_ini_state_t *config, char *args)
{
	int r;

	r = method->init(state);
	if (r < 0) {
		FUNC2(stderr, FUNC0("Initialization of %s failed.\n"),
			method->name);
		return -1;
	}

	/* Set method options from config file. */
	config_ini_section_t *section =
		FUNC1(config, method->name);
	if (section != NULL) {
		config_ini_setting_t *setting = section->settings;
		while (setting != NULL) {
			r = method->set_option(
				*state, setting->name, setting->value);
			if (r < 0) {
				method->free(*state);
				FUNC2(stderr, FUNC0("Failed to set %s"
						  " option.\n"),
					method->name);
				/* TRANSLATORS: `help' must not be
				   translated. */
				FUNC2(stderr, FUNC0("Try `-m %s:help' for more"
						  " information.\n"),
					method->name);
				return -1;
			}
			setting = setting->next;
		}
	}

	/* Set method options from command line. */
	while (args != NULL) {
		char *next_arg = FUNC3(args, ':');
		if (next_arg != NULL) *(next_arg++) = '\0';

		const char *key = args;
		char *value = FUNC3(args, '=');
		if (value == NULL) {
			FUNC2(stderr, FUNC0("Failed to parse option `%s'.\n"),
				args);
			return -1;
		} else {
			*(value++) = '\0';
		}

		r = method->set_option(*state, key, value);
		if (r < 0) {
			method->free(*state);
			FUNC2(stderr, FUNC0("Failed to set %s option.\n"),
				method->name);
			/* TRANSLATORS: `help' must not be translated. */
			FUNC2(stderr, FUNC0("Try -m %s:help' for more"
					  " information.\n"), method->name);
			return -1;
		}

		args = next_arg;
	}

	/* Start method. */
	r = method->start(*state);
	if (r < 0) {
		method->free(*state);
		FUNC2(stderr, FUNC0("Failed to start adjustment method %s.\n"),
			method->name);
		return -1;
	}

	return 0;
}