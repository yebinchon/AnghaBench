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
 int FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

int
FUNC2(const char *str, int slen, const char *suffix)
{
	size_t len = slen >= 0 ? slen : FUNC1(str);
	size_t suffixlen = FUNC1(suffix);

	return suffixlen < len ? FUNC0(str + len - suffixlen, suffix) : -1;
}