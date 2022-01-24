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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static bool FUNC2(const char *color) {
	if (FUNC0(color) != 7 || color[0] != '#') {
		return false;
	}

	char *ptr = NULL;
	FUNC1(&color[1], &ptr, 16);
	return *ptr == '\0';
}