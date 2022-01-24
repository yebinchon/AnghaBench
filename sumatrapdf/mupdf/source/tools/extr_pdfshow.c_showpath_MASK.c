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

/* Variables and functions */
 int /*<<< orphan*/  SEP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  tight ; 

__attribute__((used)) static void FUNC16(char *path, pdf_obj *obj)
{
	if (path && path[0])
	{
		char *part = FUNC2(&path, SEP);
		if (part && part[0])
		{
			if (!FUNC15(part, "*"))
			{
				int i, n;
				char buf[1000];
				if (FUNC10(ctx, obj))
				{
					n = FUNC6(ctx, obj);
					for (i = 0; i < n; ++i)
					{
						if (path)
						{
							FUNC1(buf, path, sizeof buf);
							FUNC16(buf, FUNC5(ctx, obj, i));
						}
						else
							FUNC16(NULL, FUNC5(ctx, obj, i));
					}
				}
				else if (FUNC11(ctx, obj))
				{
					n = FUNC9(ctx, obj);
					for (i = 0; i < n; ++i)
					{
						if (path)
						{
							FUNC1(buf, path, sizeof buf);
							FUNC16(buf, FUNC7(ctx, obj, i));
						}
						else
							FUNC16(NULL, FUNC7(ctx, obj, i));
					}
				}
				else
				{
					FUNC3(ctx, out, "null\n");
				}
			}
			else if (FUNC4(part) && FUNC10(ctx, obj))
				FUNC16(path, FUNC5(ctx, obj, FUNC0(part)-1));
			else
				FUNC16(path, FUNC8(ctx, obj, part));
		}
		else
			FUNC3(ctx, out, "null\n");
	}
	else
	{
		if (FUNC12(ctx, obj))
			FUNC14(obj);
		else
		{
			FUNC13(ctx, out, obj, tight, 0);
			FUNC3(ctx, out, "\n");
		}
	}
}