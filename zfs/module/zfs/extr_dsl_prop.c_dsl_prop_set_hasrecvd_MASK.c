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
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(const char *dsname)
{
	int error = 0;
	if (!FUNC0(dsname))
		error = FUNC1(dsname, ZPROP_SRC_LOCAL);
	return (error);
}