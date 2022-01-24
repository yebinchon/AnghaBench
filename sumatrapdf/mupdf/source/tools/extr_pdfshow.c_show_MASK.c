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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(char *sel)
{
	if (!FUNC8(sel, "trailer"))
		FUNC6();
	else if (!FUNC8(sel, "xref"))
		FUNC7();
	else if (!FUNC8(sel, "pages"))
		FUNC4();
	else if (!FUNC8(sel, "grep"))
		FUNC1();
	else if (!FUNC8(sel, "outline"))
		FUNC3();
	else if (!FUNC8(sel, "js"))
		FUNC2();
	else if (!FUNC8(sel, "form"))
		FUNC0();
	else
		FUNC5(sel);
}