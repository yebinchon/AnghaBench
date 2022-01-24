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
 float FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int
FUNC2(const char *str, float gamma[])
{
	char *s = FUNC1(str, ':');
	if (s == NULL) {
		/* Use value for all channels */
		float g = FUNC0(str);
		gamma[0] = gamma[1] = gamma[2] = g;
	} else {
		/* Parse separate value for each channel */
		*(s++) = '\0';
		char *g_s = s;
		s = FUNC1(s, ':');
		if (s == NULL) return -1;

		*(s++) = '\0';
		gamma[0] = FUNC0(str); /* Red */
		gamma[1] = FUNC0(g_s); /* Blue */
		gamma[2] = FUNC0(s); /* Green */
	}

	return 0;
}