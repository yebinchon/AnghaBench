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
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

boolean_t
FUNC3(const char *str, boolean_t encrypted)
{
	if (FUNC0("none", str) == 0)
		return (!encrypted);
	else if (FUNC0("prompt", str) == 0)
		return (B_TRUE);
	else if (FUNC1(str) > 8 && FUNC2("file:///", str, 8) == 0)
		return (B_TRUE);

	return (B_FALSE);
}