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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  whitespace ; 

void FUNC4(char *str) {
	size_t len = FUNC2(str);
	size_t start = FUNC3(str, whitespace);
	FUNC1(str, &str[start], len + 1 - start);

	if (*str) {
		for (len -= start + 1; FUNC0(str[len]); --len) {}
		str[len + 1] = '\0';
	}
}