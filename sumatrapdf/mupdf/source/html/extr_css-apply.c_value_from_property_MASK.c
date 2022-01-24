#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* data; } ;
typedef  TYPE_1__ fz_css_value ;
struct TYPE_8__ {struct TYPE_8__* up; } ;
typedef  TYPE_2__ fz_css_match ;

/* Variables and functions */
 int /*<<< orphan*/  inherit_list ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,char const*) ; 

__attribute__((used)) static fz_css_value *
FUNC4(fz_css_match *match, const char *name)
{
	fz_css_value *value;

	value = FUNC3(match, name);
	if (match->up)
	{
		if (value && !FUNC2(value->data, "inherit"))
			if (FUNC2(name, "font-size") != 0) /* never inherit 'font-size' textually */
				return FUNC4(match->up, name);
		if (!value && FUNC0(name, inherit_list, FUNC1(inherit_list)))
			return FUNC4(match->up, name);
	}
	return value;
}