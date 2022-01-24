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
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC2(const char *key,const char * opt) {
	const char * str = FUNC0(key);
	if (str == NULL) {
		if (opt) {
			FUNC1(key, opt);
			opt = FUNC0(key);
		}
		return opt;
	}
	return str;
}