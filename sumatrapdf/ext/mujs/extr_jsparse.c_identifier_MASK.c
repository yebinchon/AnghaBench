#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ lookahead; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  AST_IDENTIFIER ; 
 scalar_t__ TK_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static js_Ast *FUNC4(js_State *J)
{
	js_Ast *a;
	if (J->lookahead == TK_IDENTIFIER) {
		a = FUNC1(J, AST_IDENTIFIER, J->text);
		FUNC2(J);
		return a;
	}
	FUNC0(J, "unexpected token: %s (expected identifier)", FUNC3(J->lookahead));
}