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
struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* next; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ fz_css_value ;
typedef  int /*<<< orphan*/  fz_css_match ;

/* Variables and functions */
 scalar_t__ CSS_KEYWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list_style_position_kw ; 
 int /*<<< orphan*/  list_style_type_kw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(fz_css_match *match, fz_css_value *value, int spec)
{
	while (value)
	{
		if (value->type == CSS_KEYWORD)
		{
			if (FUNC1(value->data, list_style_type_kw, FUNC2(list_style_type_kw)))
			{
				FUNC0(match, "list-style-type", value, spec);
			}
			else if (FUNC1(value->data, list_style_position_kw, FUNC2(list_style_position_kw)))
			{
				FUNC0(match, "list-style-position", value, spec);
			}
		}
		value = value->next;
	}
}