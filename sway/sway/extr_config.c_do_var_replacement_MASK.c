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
struct sway_variable {char* name; char* value; } ;
struct TYPE_4__ {TYPE_1__* symbols; } ;
struct TYPE_3__ {int length; struct sway_variable** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

char *FUNC9(char *str) {
	int i;
	char *find = str;
	while ((find = FUNC3(find, '$'))) {
		// Skip if escaped.
		if (find > str && find[-1] == '\\') {
			if (find == str + 1 || !(find > str + 1 && find[-2] == '\\')) {
				++find;
				continue;
			}
		}
		// Unescape double $ and move on
		if (find[1] == '$') {
			size_t length = FUNC5(find + 1);
			FUNC2(find, find + 1, length);
			find[length] = '\0';
			++find;
			continue;
		}
		// Find matching variable
		for (i = 0; i < config->symbols->length; ++i) {
			struct sway_variable *var = config->symbols->items[i];
			int vnlen = FUNC5(var->name);
			if (FUNC6(find, var->name, vnlen) == 0) {
				int vvlen = FUNC5(var->value);
				char *newstr = FUNC1(FUNC5(str) - vnlen + vvlen + 1);
				if (!newstr) {
					FUNC8(SWAY_ERROR,
						"Unable to allocate replacement "
						"during variable expansion");
					break;
				}
				char *newptr = newstr;
				int offset = find - str;
				FUNC7(newptr, str, offset);
				newptr += offset;
				FUNC7(newptr, var->value, vvlen);
				newptr += vvlen;
				FUNC4(newptr, find + vnlen);
				FUNC0(str);
				str = newstr;
				find = str + offset + vvlen;
				break;
			}
		}
		if (i == config->symbols->length) {
			++find;
		}
	}
	return str;
}