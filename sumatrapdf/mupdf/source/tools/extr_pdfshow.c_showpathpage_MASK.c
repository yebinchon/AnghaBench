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

/* Variables and functions */
 int /*<<< orphan*/  SEP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  doc ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  out ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10(char *path)
{
	if (path)
	{
		char *part = FUNC2(&path, SEP);
		if (part && part[0])
		{
			if (!FUNC9(part, "*"))
			{
				int i, n;
				char buf[1000];
				n = FUNC5(ctx, doc);
				for (i = 0; i < n; ++i)
				{
					if (path)
					{
						FUNC1(buf, path, sizeof buf);
						FUNC8(buf, FUNC6(ctx, doc, i));
					}
					else
						FUNC8(NULL, FUNC6(ctx, doc, i));
				}
			}
			else if (FUNC4(part))
				FUNC8(path, FUNC6(ctx, doc, FUNC0(part)-1));
			else
				FUNC3(ctx, out, "null\n");
		}
		else
			FUNC3(ctx, out, "null\n");
	}
	else
	{
		FUNC7();
	}
}