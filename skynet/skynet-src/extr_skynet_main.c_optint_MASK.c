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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(const char *key, int opt) {
	const char * str = FUNC0(key);
	if (str == NULL) {
		char tmp[20];
		FUNC2(tmp,"%d",opt);
		FUNC1(key, tmp);
		return opt;
	}
	return FUNC3(str, NULL, 10);
}