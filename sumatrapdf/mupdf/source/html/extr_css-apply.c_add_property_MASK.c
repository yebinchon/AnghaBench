#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_css_value ;
struct TYPE_11__ {int count; TYPE_2__* prop; } ;
typedef  TYPE_1__ fz_css_match ;
struct TYPE_12__ {char const* name; int spec; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC9(fz_css_match *match, const char *name, fz_css_value *value, int spec)
{
	int i;

	if (!FUNC8(name, "margin"))
	{
		FUNC5(match, value, spec);
		return;
	}
	if (!FUNC8(name, "padding"))
	{
		FUNC6(match, value, spec);
		return;
	}
	if (!FUNC8(name, "border-width"))
	{
		FUNC3(match, value, spec);
		return;
	}
	if (!FUNC8(name, "border-color"))
	{
		FUNC1(match, value, spec);
		return;
	}
	if (!FUNC8(name, "border-style"))
	{
		FUNC2(match, value, spec);
		return;
	}
	if (!FUNC8(name, "border"))
	{
		FUNC0(match, value, spec, 1, 1, 1, 1);
		return;
	}
	if (!FUNC8(name, "border-top"))
	{
		FUNC0(match, value, spec, 1, 0, 0, 0);
		return;
	}
	if (!FUNC8(name, "border-right"))
	{
		FUNC0(match, value, spec, 0, 1, 0, 0);
		return;
	}
	if (!FUNC8(name, "border-bottom"))
	{
		FUNC0(match, value, spec, 0, 0, 1, 0);
		return;
	}
	if (!FUNC8(name, "border-left"))
	{
		FUNC0(match, value, spec, 0, 0, 0, 1);
		return;
	}
	if (!FUNC8(name, "list-style"))
	{
		FUNC4(match, value, spec);
		return;
	}

	/* shorthand expansions: */
	/* TODO: border-color */
	/* TODO: border-style */
	/* TODO: font */
	/* TODO: list-style */
	/* TODO: background */

	for (i = 0; i < match->count; ++i)
	{
		if (!FUNC8(match->prop[i].name, name))
		{
			if (match->prop[i].spec <= spec)
			{
				match->prop[i].value = value;
				match->prop[i].spec = spec;
			}
			return;
		}
	}

	if (match->count + 1 >= (int)FUNC7(match->prop))
	{
		// fz_warn(ctx, "too many css properties");
		return;
	}

	match->prop[match->count].name = name;
	match->prop[match->count].value = value;
	match->prop[match->count].spec = spec;
	++match->count;
}