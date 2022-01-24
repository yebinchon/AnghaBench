#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Window ;
struct TYPE_3__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  AnyPropertyType ; 
 int /*<<< orphan*/  False ; 
 scalar_t__ None ; 
 int Success ; 
 int /*<<< orphan*/  True ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*,unsigned long*,unsigned long*,unsigned char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC3(RDPCLIENT * This, Window wnd, char *propname, long max_length,
		   unsigned long *nitems_return, unsigned char **prop_return, int nowarn)
{
	int result;
	Atom property;
	Atom actual_type_return;
	int actual_format_return;
	unsigned long bytes_after_return;

	property = FUNC1(This->display, propname, True);
	if (property == None)
	{
		FUNC2(stderr, "Atom %s does not exist\n", propname);
		return (-1);
	}

	result = FUNC0(This->display, wnd, property, 0,	/* long_offset */
				    max_length,	/* long_length */
				    False,	/* delete */
				    AnyPropertyType,	/* req_type */
				    &actual_type_return,
				    &actual_format_return,
				    nitems_return, &bytes_after_return, prop_return);

	if (result != Success)
	{
		FUNC2(stderr, "XGetWindowProperty failed\n");
		return (-1);
	}

	if (actual_type_return == None || actual_format_return == 0)
	{
		if (!nowarn)
			FUNC2(stderr, "Window is missing property %s\n", propname);
		return (-1);
	}

	if (bytes_after_return)
	{
		FUNC2(stderr, "%s is too big for me\n", propname);
		return (-1);
	}

	if (actual_format_return != 32)
	{
		FUNC2(stderr, "%s has bad format\n", propname);
		return (-1);
	}

	return (0);
}