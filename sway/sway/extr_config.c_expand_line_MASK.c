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

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,char*,char const*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC4(const char *block, const char *line, bool add_brace) {
	int size = (block ? FUNC2(block) + 1 : 0) + FUNC2(line)
		+ (add_brace ? 2 : 0) + 1;
	char *expanded = FUNC0(1, size);
	if (!expanded) {
		FUNC3(SWAY_ERROR, "Cannot allocate expanded line buffer");
		return NULL;
	}
	FUNC1(expanded, size, "%s%s%s%s", block ? block : "",
			block ? " " : "", line, add_brace ? " {" : "");
	return expanded;
}