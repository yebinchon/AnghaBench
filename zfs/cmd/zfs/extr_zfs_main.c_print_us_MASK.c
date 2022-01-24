#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uu_avl_t ;
struct TYPE_6__ {int /*<<< orphan*/  usn_nvl; } ;
typedef  TYPE_1__ us_node_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int USFIELD_LAST ; 
 int USFIELD_NAME ; 
 int USFIELD_TYPE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int*,int,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * us_field_hdr ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(boolean_t scripted, boolean_t parsable, int *fields, int types,
    size_t *width, boolean_t rmnode, uu_avl_t *avl)
{
	us_node_t *node;
	const char *col;
	int cfield = 0;
	int field;

	if (!scripted) {
		boolean_t first = B_TRUE;

		while ((field = fields[cfield]) != USFIELD_LAST) {
			col = FUNC0(us_field_hdr[field]);
			if (field == USFIELD_TYPE || field == USFIELD_NAME) {
				(void) FUNC3(first ? "%-*s" : "  %-*s",
				    (int)width[field], col);
			} else {
				(void) FUNC3(first ? "%*s" : "  %*s",
				    (int)width[field], col);
			}
			first = B_FALSE;
			cfield++;
		}
		(void) FUNC3("\n");
	}

	for (node = FUNC4(avl); node; node = FUNC5(avl, node)) {
		FUNC2(scripted, parsable, fields, types, width, node);
		if (rmnode)
			FUNC1(node->usn_nvl);
	}
}