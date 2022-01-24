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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (size_t) ; 

void
FUNC10(void)
{
	FILE	*f;
	char	*history_file, *line, *tmp;
	size_t	 length;

	if ((history_file = FUNC7()) == NULL)
		return;
	FUNC4("loading history from %s", history_file);

	f = FUNC2(history_file, "r");
	if (f == NULL) {
		FUNC4("%s: %s", history_file, FUNC8(errno));
		FUNC3(history_file);
		return;
	}
	FUNC3(history_file);

	for (;;) {
		if ((line = FUNC1(f, &length)) == NULL)
			break;

		if (length > 0) {
			if (line[length - 1] == '\n') {
				line[length - 1] = '\0';
				FUNC6(line);
			} else {
				tmp = FUNC9(length + 1);
				FUNC5(tmp, line, length);
				tmp[length] = '\0';
				FUNC6(tmp);
				FUNC3(tmp);
			}
		}
	}
	FUNC0(f);
}