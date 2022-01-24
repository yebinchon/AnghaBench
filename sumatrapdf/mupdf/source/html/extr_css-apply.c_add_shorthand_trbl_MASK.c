#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef  TYPE_1__ fz_css_value ;
typedef  int /*<<< orphan*/  fz_css_match ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(fz_css_match *match, fz_css_value *value, int spec,
	const char *name_t, const char *name_r, const char *name_b, const char *name_l)
{
	int n = FUNC1(value);

	if (n == 1)
	{
		FUNC0(match, name_t, value, spec);
		FUNC0(match, name_r, value, spec);
		FUNC0(match, name_b, value, spec);
		FUNC0(match, name_l, value, spec);
	}

	if (n == 2)
	{
		fz_css_value *a = value;
		fz_css_value *b = value->next;

		FUNC0(match, name_t, a, spec);
		FUNC0(match, name_r, b, spec);
		FUNC0(match, name_b, a, spec);
		FUNC0(match, name_l, b, spec);
	}

	if (n == 3)
	{
		fz_css_value *a = value;
		fz_css_value *b = value->next;
		fz_css_value *c = value->next->next;

		FUNC0(match, name_t, a, spec);
		FUNC0(match, name_r, b, spec);
		FUNC0(match, name_b, c, spec);
		FUNC0(match, name_l, b, spec);
	}

	if (n == 4)
	{
		fz_css_value *a = value;
		fz_css_value *b = value->next;
		fz_css_value *c = value->next->next;
		fz_css_value *d = value->next->next->next;

		FUNC0(match, name_t, a, spec);
		FUNC0(match, name_r, b, spec);
		FUNC0(match, name_b, c, spec);
		FUNC0(match, name_l, d, spec);
	}
}