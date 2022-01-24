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
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  color_map ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(int *color, const char *name)
{
	if (FUNC0(color, color_map, name))
		return true;
	/* Git expects a plain int w/o prefix, however, color<int> is
	 * the preferred Tig color notation.  */
	if (!FUNC2(name, "color"))
		name += 5;
	return FUNC3(name) &&
	       FUNC1(color, name, 0, 255) == SUCCESS;
}