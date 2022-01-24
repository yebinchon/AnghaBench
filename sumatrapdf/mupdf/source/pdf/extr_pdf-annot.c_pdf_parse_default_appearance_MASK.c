#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char**,char*) ; 
 float FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void
FUNC4(fz_context *ctx, const char *da, const char **font, float *size, float color[3])
{
	char buf[100], *p = buf, *tok, *end;
	float stack[3] = { 0, 0, 0 };
	int top = 0;

	*font = "Helv";
	*size = 12;
	color[0] = color[1] = color[2] = 0;

	FUNC0(buf, da, sizeof buf);
	while ((tok = FUNC1(&p, " \n\r\t")) != NULL)
	{
		if (tok[0] == 0)
			;
		else if (tok[0] == '/')
		{
			if (!FUNC3(tok+1, "Cour")) *font = "Cour";
			if (!FUNC3(tok+1, "Helv")) *font = "Helv";
			if (!FUNC3(tok+1, "TiRo")) *font = "TiRo";
			if (!FUNC3(tok+1, "Symb")) *font = "Symb";
			if (!FUNC3(tok+1, "ZaDb")) *font = "ZaDb";
		}
		else if (!FUNC3(tok, "Tf"))
		{
			*size = stack[0];
			top = 0;
		}
		else if (!FUNC3(tok, "g"))
		{
			color[0] = color[1] = color[2] = stack[0];
			top = 0;
		}
		else if (!FUNC3(tok, "rg"))
		{
			color[0] = stack[0];
			color[1] = stack[1];
			color[2] = stack[2];
			top=0;
		}
		else
		{
			if (top < 3)
				stack[top] = FUNC2(tok, &end);
			if (*end == 0)
				++top;
			else
				top = 0;
		}
	}
}