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
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char const*) ; 

list_t *FUNC5(const char *str, const char *delims) {
	list_t *res = FUNC0();
	char *copy = FUNC3(str);

	char *token = FUNC4(copy, delims);
	while (token) {
		FUNC2(res, FUNC3(token));
		token = FUNC4(NULL, delims);
	}
	FUNC1(copy);
	return res;
}