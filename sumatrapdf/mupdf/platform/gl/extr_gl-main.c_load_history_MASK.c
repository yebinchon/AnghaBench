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
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {void* loc; } ;

/* Variables and functions */
 int PATH_MAX ; 
 void* currentpage ; 
 int /*<<< orphan*/  filename ; 
 TYPE_1__* future ; 
 int future_count ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* history ; 
 int history_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* marks ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
	js_State *J;
	char absname[PATH_MAX];
	int i, n;

	if (!FUNC10(filename, absname))
		return;

	J = FUNC6(NULL, NULL, 0);

	FUNC9(J);

	if (FUNC4(J, -1, absname))
	{
		if (FUNC4(J, -1, "current"))
		{
			currentpage = FUNC11(J);
			FUNC7(J, 1);
		}

		if (FUNC4(J, -1, "history"))
		{
			if (FUNC5(J, -1))
			{
				history_count = FUNC0(FUNC3(J, -1), 0, FUNC8(history));
				for (i = 0; i < history_count; ++i)
				{
					FUNC2(J, -1, i);
					history[i].loc = FUNC11(J);
					FUNC7(J, 1);
				}
			}
			FUNC7(J, 1);
		}

		if (FUNC4(J, -1, "future"))
		{
			if (FUNC5(J, -1))
			{
				future_count = FUNC0(FUNC3(J, -1), 0, FUNC8(future));
				for (i = 0; i < future_count; ++i)
				{
					FUNC2(J, -1, i);
					future[i].loc = FUNC11(J);
					FUNC7(J, 1);
				}
			}
			FUNC7(J, 1);
		}

		if (FUNC4(J, -1, "marks"))
		{
			if (FUNC5(J, -1))
			{
				n = FUNC0(FUNC3(J, -1), 0, FUNC8(marks));
				for (i = 0; i < n; ++i)
				{
					FUNC2(J, -1, i);
					marks[i].loc = FUNC11(J);
					FUNC7(J, 1);
				}
			}
			FUNC7(J, 1);
		}
	}

	FUNC1(J);
}