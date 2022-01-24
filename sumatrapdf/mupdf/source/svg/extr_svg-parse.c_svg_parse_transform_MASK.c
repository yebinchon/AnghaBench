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
typedef  int /*<<< orphan*/  svg_document ;
typedef  int /*<<< orphan*/  keyword ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float FZ_DEGREE ; 
 int /*<<< orphan*/  FZ_ERROR_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,float,float,int,float,float) ; 
 int /*<<< orphan*/  FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (float,float) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char const) ; 
 scalar_t__ FUNC8 (char const) ; 
 scalar_t__ FUNC9 (char const) ; 
 scalar_t__ FUNC10 (char const) ; 
 char* FUNC11 (float*,char const*) ; 
 float FUNC12 (float) ; 

fz_matrix
FUNC13(fz_context *ctx, svg_document *doc, const char *str, fz_matrix transform)
{
	char keyword[20];
	int keywordlen;
	float args[6];
	int nargs;

	nargs = 0;
	keywordlen = 0;

	while (*str)
	{
		while (FUNC10(*str))
			str ++;
		if (*str == 0)
			break;

		/*
		 * Parse keyword and opening parenthesis.
		 */

		keywordlen = 0;
		while (FUNC7(*str) && keywordlen < (int)sizeof(keyword) - 1)
			keyword[keywordlen++] = *str++;
		keyword[keywordlen] = 0;

		if (keywordlen == 0)
			FUNC4(ctx, FZ_ERROR_SYNTAX, "expected keyword in transform attribute");

		while (FUNC9(*str))
			str ++;

		if (*str != '(')
			FUNC4(ctx, FZ_ERROR_SYNTAX, "expected opening parenthesis in transform attribute");
		str ++;

		/*
		 * Parse list of numbers until closing parenthesis
		 */

		nargs = 0;
		while (*str && *str != ')' && nargs < 6)
		{
			while (FUNC10(*str))
				str ++;
			if (FUNC8(*str))
				str = FUNC11(&args[nargs++], str);
			else
				break;
		}

		if (*str != ')')
			FUNC4(ctx, FZ_ERROR_SYNTAX, "expected closing parenthesis in transform attribute");
		str ++;

		/*
		 * Execute the transform.
		 */

		if (!FUNC6(keyword, "matrix"))
		{
			if (nargs != 6)
				FUNC4(ctx, FZ_ERROR_SYNTAX, "wrong number of arguments to matrix(): %d", nargs);
			transform = FUNC0(FUNC1(args[0], args[1], args[2], args[3], args[4], args[5]), transform);
		}

		else if (!FUNC6(keyword, "translate"))
		{
			if (nargs != 2)
				FUNC4(ctx, FZ_ERROR_SYNTAX, "wrong number of arguments to translate(): %d", nargs);
			transform = FUNC0(FUNC5(args[0], args[1]), transform);
		}

		else if (!FUNC6(keyword, "scale"))
		{
			if (nargs == 1)
				transform = FUNC0(FUNC3(args[0], args[0]), transform);
			else if (nargs == 2)
				transform = FUNC0(FUNC3(args[0], args[1]), transform);
			else
				FUNC4(ctx, FZ_ERROR_SYNTAX, "wrong number of arguments to scale(): %d", nargs);
		}

		else if (!FUNC6(keyword, "rotate"))
		{
			if (nargs != 1)
				FUNC4(ctx, FZ_ERROR_SYNTAX, "wrong number of arguments to rotate(): %d", nargs);
			transform = FUNC0(FUNC2(args[0]), transform);
		}

		else if (!FUNC6(keyword, "skewX"))
		{
			if (nargs != 1)
				FUNC4(ctx, FZ_ERROR_SYNTAX, "wrong number of arguments to skewX(): %d", nargs);
			transform = FUNC0(FUNC1(1, 0, FUNC12(args[0] * FZ_DEGREE), 1, 0, 0), transform);
		}

		else if (!FUNC6(keyword, "skewY"))
		{
			if (nargs != 1)
				FUNC4(ctx, FZ_ERROR_SYNTAX, "wrong number of arguments to skewY(): %d", nargs);
			transform = FUNC0(FUNC1(1, FUNC12(args[0] * FZ_DEGREE), 0, 1, 0, 0), transform);
		}

		else
		{
			FUNC4(ctx, FZ_ERROR_SYNTAX, "unknown transform function: %s", keyword);
		}
	}

	return transform;
}