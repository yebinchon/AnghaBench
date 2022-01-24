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
struct TYPE_3__ {char* name; scalar_t__ important; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ fz_css_property ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(fz_css_property *prop)
{
	FUNC1("\t%s: ", prop->name);
	FUNC0(prop->value);
	if (prop->important)
		FUNC1(" !important");
	FUNC1(";\n");
}