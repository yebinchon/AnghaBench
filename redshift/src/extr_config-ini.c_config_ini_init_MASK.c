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
typedef  int /*<<< orphan*/  line ;
struct TYPE_6__ {TYPE_3__* sections; } ;
typedef  TYPE_1__ config_ini_state_t ;
struct TYPE_7__ {int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; struct TYPE_7__* next; } ;
typedef  TYPE_2__ config_ini_setting_t ;
struct TYPE_8__ {TYPE_2__* settings; int /*<<< orphan*/ * name; struct TYPE_8__* next; } ;
typedef  TYPE_3__ config_ini_section_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 
 size_t FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (char*,char*) ; 

int
FUNC12(config_ini_state_t *state, const char *filepath)
{
	config_ini_section_t *section = NULL;
	state->sections = NULL;

	FILE *f = FUNC7(filepath);
	if (f == NULL) {
		/* Only a serious error if a file was explicitly requested. */
		if (filepath != NULL) return -1;
		return 0;
	}

	char line[MAX_LINE_LENGTH];
	char *s;

	while (1) {
		/* Handle the file input linewise. */
		char *r = FUNC3(line, sizeof(line), f);
		if (r == NULL) break;

		/* Strip leading blanks and trailing newline. */
		s = line + FUNC11(line, " \t");
		s[FUNC9(s, "\r\n")] = '\0';

		/* Skip comments and empty lines. */
		if (s[0] == ';' || s[0] == '#' || s[0] == '\0') continue;

		if (s[0] == '[') {
			/* Read name of section. */
			const char *name = s+1;
			char *end = FUNC8(s, ']');
			if (end == NULL || end[1] != '\0' || end == name) {
				FUNC4(FUNC0("Malformed section header in config"
					" file.\n"), stderr);
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			*end = '\0';

			/* Create section. */
			section = FUNC5(sizeof(config_ini_section_t));
			if (section == NULL) {
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			/* Insert into section list. */
			section->name = NULL;
			section->settings = NULL;
			section->next = state->sections;
			state->sections = section;

			/* Copy section name. */
			section->name = FUNC5(end - name + 1);
			if (section->name == NULL) {
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			FUNC6(section->name, name, end - name + 1);
		} else {
			/* Split assignment at equals character. */
			char *end = FUNC8(s, '=');
			if (end == NULL || end == s) {
				FUNC4(FUNC0("Malformed assignment in config"
					" file.\n"), stderr);
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			*end = '\0';
			char *value = end + 1;

			if (section == NULL) {
				FUNC4(FUNC0("Assignment outside section in config"
					" file.\n"), stderr);
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			/* Create section. */
			config_ini_setting_t *setting =
				FUNC5(sizeof(config_ini_setting_t));
			if (setting == NULL) {
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			/* Insert into section list. */
			setting->name = NULL;
			setting->value = NULL;
			setting->next = section->settings;
			section->settings = setting;

			/* Copy name of setting. */
			setting->name = FUNC5(end - s + 1);
			if (setting->name == NULL) {
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			FUNC6(setting->name, s, end - s + 1);

			/* Copy setting value. */
			size_t value_len = FUNC10(value) + 1;
			setting->value = FUNC5(value_len);
			if (setting->value == NULL) {
				FUNC2(f);
				FUNC1(state);
				return -1;
			}

			FUNC6(setting->value, value, value_len);
		}
	}

	FUNC2(f);

	return 0;
}