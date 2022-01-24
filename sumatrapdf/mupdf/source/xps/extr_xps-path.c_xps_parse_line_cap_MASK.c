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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static int
FUNC1(char *attr)
{
	if (attr)
	{
		if (!FUNC0(attr, "Flat")) return 0;
		if (!FUNC0(attr, "Round")) return 1;
		if (!FUNC0(attr, "Square")) return 2;
		if (!FUNC0(attr, "Triangle")) return 3;
	}
	return 0;
}