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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static boolean_t
FUNC3(char *dev)
{
	/* For 'watchdog' dev */
	if (FUNC1(dev, "watchdog") == 0)
		return (B_TRUE);

	/* For 'watchdog<digit><whatever> */
	if (FUNC2(dev, "watchdog") == dev && FUNC0(dev[8]))
		return (B_TRUE);

	return (B_FALSE);
}