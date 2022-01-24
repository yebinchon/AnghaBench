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
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static js_Ast *FUNC2(js_State *J)
{
	js_Ast *a;
	FUNC0(J, '{');
	a = FUNC1(J, '}');
	FUNC0(J, '}');
	return a;
}