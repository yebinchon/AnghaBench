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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static boolean_t
FUNC2(const char *ds1, const char *ds2)
{
	size_t d1len = FUNC0(ds1);

	/* ds2 can't be a descendant if it's smaller */
	if (FUNC0(ds2) < d1len)
		return (B_FALSE);

	/* otherwise, compare strings and verify that there's a '/' char */
	return (ds2[d1len] == '/' && (FUNC1(ds1, ds2, d1len) == 0));
}