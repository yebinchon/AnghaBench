#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef  TYPE_1__ fz_css_selector ;
struct TYPE_9__ {TYPE_3__* declaration; TYPE_1__* selector; } ;
typedef  TYPE_2__ fz_css_rule ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_3__ fz_css_property ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(fz_css_rule *rule)
{
	fz_css_selector *sel;
	fz_css_property *prop;

	for (sel = rule->selector; sel; sel = sel->next)
	{
		FUNC1(sel);
		FUNC2(" /* %d */", FUNC3(sel, 0));
		if (sel->next)
			FUNC2(", ");
	}

	FUNC2("\n{\n");
	for (prop = rule->declaration; prop; prop = prop->next)
	{
		FUNC0(prop);
	}
	FUNC2("}\n");
}