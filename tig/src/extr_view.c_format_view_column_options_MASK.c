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
typedef  int /*<<< orphan*/  value ;
struct option_info {char* type; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  name ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct option_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,size_t*,char*,char const*,char*,char const*,char*) ; 

__attribute__((used)) static enum status_code
FUNC5(struct option_info options[], size_t options_size, char buf[], size_t bufsize)
{
	char name[SIZEOF_STR];
	char value[SIZEOF_STR];
	size_t bufpos = 0;
	const char *sep = ":";
	int i;

	buf[0] = 0;

	for (i = 0; i < options_size; i++) {
		struct option_info *option = &options[i];
		const char *assign = "=";

		if (!FUNC0(name, sizeof(name), option->name)
		    || !FUNC2(option, value, sizeof(value)))
			return FUNC1("No space left in buffer");

		if (!FUNC3(name, "display")) {
			name[0] = 0;
			assign = "";

		}

		if (!FUNC3(option->type, "bool") && !FUNC3(value, "yes")) {
			if (!*name) {
				sep = ":yes,";
				continue;
			}

			/* For non-display boolean options 'yes' is implied. */
#if 0
			value[0] = 0;
			assign = "";
#endif
		}

		if (!FUNC3(option->type, "int") && !FUNC3(value, "0"))
			continue;

		if (!FUNC4(buf, bufsize, &bufpos, "%s%s%s%s",
				    sep, name, assign, value))
			return FUNC1("No space left in buffer");

		sep = ",";
	}

	return SUCCESS;
}