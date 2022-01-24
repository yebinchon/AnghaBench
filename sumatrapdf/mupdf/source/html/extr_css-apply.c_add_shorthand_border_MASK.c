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
 scalar_t__ CSS_HASH ; 
 scalar_t__ CSS_KEYWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  border_style_kw ; 
 int /*<<< orphan*/  border_width_kw ; 
 int /*<<< orphan*/  color_kw ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(fz_css_match *match, fz_css_value *value, int spec, int T, int R, int B, int L)
{
	while (value)
	{
		if (value->type == CSS_HASH)
		{
			if (T) FUNC0(match, "border-top-color", value, spec);
			if (R) FUNC0(match, "border-right-color", value, spec);
			if (B) FUNC0(match, "border-bottom-color", value, spec);
			if (L) FUNC0(match, "border-left-color", value, spec);
		}
		else if (value->type == CSS_KEYWORD)
		{
			if (FUNC1(value->data, border_width_kw, FUNC2(border_width_kw)))
			{
				if (T) FUNC0(match, "border-top-width", value, spec);
				if (R) FUNC0(match, "border-right-width", value, spec);
				if (B) FUNC0(match, "border-bottom-width", value, spec);
				if (L) FUNC0(match, "border-left-width", value, spec);
			}
			else if (FUNC1(value->data, border_style_kw, FUNC2(border_style_kw)))
			{
				if (T) FUNC0(match, "border-top-style", value, spec);
				if (R) FUNC0(match, "border-right-style", value, spec);
				if (B) FUNC0(match, "border-bottom-style", value, spec);
				if (L) FUNC0(match, "border-left-style", value, spec);
			}
			else if (FUNC1(value->data, color_kw, FUNC2(color_kw)))
			{
				if (T) FUNC0(match, "border-top-color", value, spec);
				if (R) FUNC0(match, "border-right-color", value, spec);
				if (B) FUNC0(match, "border-bottom-color", value, spec);
				if (L) FUNC0(match, "border-left-color", value, spec);
			}
		}
		else
		{
			if (T) FUNC0(match, "border-top-width", value, spec);
			if (R) FUNC0(match, "border-right-width", value, spec);
			if (B) FUNC0(match, "border-bottom-width", value, spec);
			if (L) FUNC0(match, "border-left-width", value, spec);
		}
		value = value->next;
	}
}