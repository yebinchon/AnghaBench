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
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,unsigned long*,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC3(RDPCLIENT * This, Window wnd)
{
	unsigned long nitems_return;
	unsigned char *prop_return;
	int desktop;

	if (FUNC2(This, wnd, "_NET_WM_DESKTOP", 1, &nitems_return, &prop_return, 0) < 0)
		return (-1);

	if (nitems_return != 1)
	{
		FUNC1(stderr, "_NET_WM_DESKTOP has bad length\n");
		return (-1);
	}

	desktop = *prop_return;
	FUNC0(prop_return);
	return desktop;
}