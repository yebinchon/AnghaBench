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
 char* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(char *value) {
	if (!FUNC2(value, '\\')) {
		return;
	}
	char *copy = FUNC0(FUNC4(value) + 1, 1);
	char *readhead = value;
	char *writehead = copy;
	while (*readhead) {
		if (*readhead == '\\' && *(readhead + 1) == '"') {
			// skip the slash
			++readhead;
		}
		*writehead = *readhead;
		++writehead;
		++readhead;
	}
	FUNC3(value, copy);
	FUNC1(copy);
}