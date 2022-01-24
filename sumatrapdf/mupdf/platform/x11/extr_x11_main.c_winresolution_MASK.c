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
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xdpy ; 
 int /*<<< orphan*/  xscr ; 

__attribute__((used)) static int FUNC2(void)
{
	return FUNC0(xdpy, xscr) * 25.4f /
		FUNC1(xdpy, xscr) + 0.5f;
}