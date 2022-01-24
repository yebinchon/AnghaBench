#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,unsigned long*,unsigned char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(RDPCLIENT * This)
{
	unsigned long nitems_return;
	unsigned char *prop_return;
	int current_desktop;

	if (FUNC3
	    (This, FUNC0(This->display), "_NET_CURRENT_DESKTOP", 1, &nitems_return,
	     &prop_return, 0) < 0)
		return (-1);

	if (nitems_return != 1)
	{
		FUNC2(stderr, "_NET_CURRENT_DESKTOP has bad length\n");
		return (-1);
	}

	current_desktop = *prop_return;
	FUNC1(prop_return);
	return current_desktop;
}