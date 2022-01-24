#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char type; int /*<<< orphan*/ * data; TYPE_1__* next; struct TYPE_6__* args; } ;
typedef  TYPE_2__ fz_css_value ;
typedef  int /*<<< orphan*/  fz_css_color ;
struct TYPE_5__ {TYPE_2__* next; } ;

/* Variables and functions */
 char CSS_HASH ; 
 char CSS_KEYWORD ; 
 int /*<<< orphan*/  N_NUMBER ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static fz_css_color
FUNC6(fz_css_value *value, fz_css_color initial)
{
	if (!value)
		return initial;

	if (value->type == CSS_HASH)
	{
		int r, g, b;
		size_t n;
hex_color:
		n = FUNC4(value->data);
		if (n == 3)
		{
			r = FUNC5(value->data[0]) * 16 + FUNC5(value->data[0]);
			g = FUNC5(value->data[1]) * 16 + FUNC5(value->data[1]);
			b = FUNC5(value->data[2]) * 16 + FUNC5(value->data[2]);
		}
		else if (n == 6)
		{
			r = FUNC5(value->data[0]) * 16 + FUNC5(value->data[1]);
			g = FUNC5(value->data[2]) * 16 + FUNC5(value->data[3]);
			b = FUNC5(value->data[4]) * 16 + FUNC5(value->data[5]);
		}
		else
		{
			r = g = b = 0;
		}
		return FUNC1(r, g, b, 255);
	}

	if (value->type == '(' && !FUNC3(value->data, "rgb"))
	{
		fz_css_value *vr, *vg, *vb;
		int r, g, b;
		vr = value->args;
		vg = vr && vr->next ? vr->next->next : NULL; /* skip the ',' nodes */
		vb = vg && vg->next ? vg->next->next : NULL; /* skip the ',' nodes */
		r = FUNC0(FUNC2(vr, 0, N_NUMBER), 255, 255, 0);
		g = FUNC0(FUNC2(vg, 0, N_NUMBER), 255, 255, 0);
		b = FUNC0(FUNC2(vb, 0, N_NUMBER), 255, 255, 0);
		return FUNC1(r, g, b, 255);
	}

	if (value->type == CSS_KEYWORD)
	{
		if (!FUNC3(value->data, "transparent"))
			return FUNC1(0, 0, 0, 0);
		if (!FUNC3(value->data, "maroon"))
			return FUNC1(0x80, 0x00, 0x00, 255);
		if (!FUNC3(value->data, "red"))
			return FUNC1(0xFF, 0x00, 0x00, 255);
		if (!FUNC3(value->data, "orange"))
			return FUNC1(0xFF, 0xA5, 0x00, 255);
		if (!FUNC3(value->data, "yellow"))
			return FUNC1(0xFF, 0xFF, 0x00, 255);
		if (!FUNC3(value->data, "olive"))
			return FUNC1(0x80, 0x80, 0x00, 255);
		if (!FUNC3(value->data, "purple"))
			return FUNC1(0x80, 0x00, 0x80, 255);
		if (!FUNC3(value->data, "fuchsia"))
			return FUNC1(0xFF, 0x00, 0xFF, 255);
		if (!FUNC3(value->data, "white"))
			return FUNC1(0xFF, 0xFF, 0xFF, 255);
		if (!FUNC3(value->data, "lime"))
			return FUNC1(0x00, 0xFF, 0x00, 255);
		if (!FUNC3(value->data, "green"))
			return FUNC1(0x00, 0x80, 0x00, 255);
		if (!FUNC3(value->data, "navy"))
			return FUNC1(0x00, 0x00, 0x80, 255);
		if (!FUNC3(value->data, "blue"))
			return FUNC1(0x00, 0x00, 0xFF, 255);
		if (!FUNC3(value->data, "aqua"))
			return FUNC1(0x00, 0xFF, 0xFF, 255);
		if (!FUNC3(value->data, "teal"))
			return FUNC1(0x00, 0x80, 0x80, 255);
		if (!FUNC3(value->data, "black"))
			return FUNC1(0x00, 0x00, 0x00, 255);
		if (!FUNC3(value->data, "silver"))
			return FUNC1(0xC0, 0xC0, 0xC0, 255);
		if (!FUNC3(value->data, "gray"))
			return FUNC1(0x80, 0x80, 0x80, 255);
		goto hex_color; /* last ditch attempt: maybe it's a #XXXXXX color without the # */
	}
	return initial;
}