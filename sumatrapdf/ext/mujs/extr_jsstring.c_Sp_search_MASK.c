#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_7__ {int /*<<< orphan*/  prog; } ;
typedef  TYPE_2__ js_Regexp ;
struct TYPE_8__ {TYPE_1__* sub; } ;
struct TYPE_6__ {int /*<<< orphan*/  sp; } ;
typedef  TYPE_3__ Resub ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(js_State *J)
{
	js_Regexp *re;
	const char *text;
	Resub m;

	text = FUNC0(J, 0);

	if (FUNC3(J, 1))
		FUNC1(J, 1);
	else if (FUNC4(J, 1))
		FUNC5(J, "", 0);
	else
		FUNC5(J, FUNC8(J, 1), 0);

	re = FUNC7(J, -1);

	if (!FUNC2(J, re->prog, text, &m, 0))
		FUNC6(J, FUNC9(text, m.sub[0].sp));
	else
		FUNC6(J, -1);
}