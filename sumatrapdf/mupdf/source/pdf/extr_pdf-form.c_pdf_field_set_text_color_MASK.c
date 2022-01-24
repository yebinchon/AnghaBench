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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  DA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char const**,float*,float*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,char const*,float,float*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void FUNC11(fz_context *ctx, pdf_obj *field, pdf_obj *col)
{
	char buf[100];
	const char *font;
	float size, color[3], black;
	const char *da = FUNC9(ctx, FUNC4(ctx, field, FUNC0(DA)));

	FUNC7(ctx, da, &font, &size, color);

	switch (FUNC3(ctx, col))
	{
	default:
		color[0] = color[1] = color[2] = 0;
		break;
	case 1:
		color[0] = color[1] = color[2] = FUNC2(ctx, col, 0);
		break;
	case 3:
		color[0] = FUNC2(ctx, col, 0);
		color[1] = FUNC2(ctx, col, 1);
		color[2] = FUNC2(ctx, col, 2);
		break;
	case 4:
		black = FUNC2(ctx, col, 3);
		color[0] = 1 - FUNC1(1, FUNC2(ctx, col, 0) + black);
		color[1] = 1 - FUNC1(1, FUNC2(ctx, col, 1) + black);
		color[2] = 1 - FUNC1(1, FUNC2(ctx, col, 2) + black);
		break;
	}

	FUNC8(ctx, buf, sizeof buf, font, size, color);
	FUNC5(ctx, field, FUNC0(DA), buf, FUNC10(buf));
	FUNC6(ctx, field);
}