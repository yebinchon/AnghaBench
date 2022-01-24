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
typedef  int /*<<< orphan*/  fz_xml ;
struct TYPE_3__ {char combine; scalar_t__ cond; scalar_t__ name; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef  TYPE_1__ fz_css_selector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(fz_css_selector *sel, fz_xml *node)
{
	if (!node)
		return 0;

	if (sel->combine)
	{
		/* descendant */
		if (sel->combine == ' ')
		{
			fz_xml *parent = FUNC3(node);
			while (parent)
			{
				if (FUNC5(sel->left, parent))
					if (FUNC5(sel->right, node))
						return 1;
				parent = FUNC3(parent);
			}
			return 0;
		}

		/* child */
		if (sel->combine == '>')
		{
			fz_xml *parent = FUNC3(node);
			if (!parent)
				return 0;
			if (!FUNC5(sel->left, parent))
				return 0;
			if (!FUNC5(sel->right, node))
				return 0;
		}

		/* adjacent */
		if (sel->combine == '+')
		{
			fz_xml *prev = FUNC1(node);
			while (prev && !FUNC2(prev))
				prev = FUNC1(prev);
			if (!prev)
				return 0;
			if (!FUNC2(prev))
				return 0;
			if (!FUNC5(sel->left, prev))
				return 0;
			if (!FUNC5(sel->right, node))
				return 0;
		}
	}

	if (sel->name)
	{
		if (!FUNC0(node, sel->name))
			return 0;
	}

	if (sel->cond)
	{
		if (!FUNC4(sel->cond, node))
			return 0;
	}

	return 1;
}