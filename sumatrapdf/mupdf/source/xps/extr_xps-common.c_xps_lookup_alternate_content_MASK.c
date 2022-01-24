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
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 char* FUNC1 (char**,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

fz_xml *
FUNC7(fz_context *ctx, xps_document *doc, fz_xml *node)
{
	for (node = FUNC3(node); node; node = FUNC5(node))
	{
		if (FUNC4(node, "Choice") && FUNC2(node, "Requires"))
		{
			char list[64];
			char *next = list, *item;
			FUNC0(list, FUNC2(node, "Requires"), sizeof(list));
			while ((item = FUNC1(&next, " \t\r\n")) != NULL && (!*item || !FUNC6(item, "xps")));
			if (!item)
				return FUNC3(node);
		}
		else if (FUNC4(node, "Fallback"))
			return FUNC3(node);
	}
	return NULL;
}