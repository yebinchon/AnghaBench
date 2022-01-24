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
typedef  int /*<<< orphan*/  js_Value ;
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  (* js_CFunction ) (int /*<<< orphan*/ *) ;

/* Variables and functions */
 scalar_t__ BOT ; 
 scalar_t__ TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(js_State *J, int n, int min, js_CFunction F)
{
	int i;
	js_Value v;

	for (i = n; i < min; ++i)
		FUNC0(J);

	F(J);
	v = *FUNC2(J, -1);
	TOP = --BOT; /* clear stack */
	FUNC1(J, v);
}