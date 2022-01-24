#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ lookahead; int /*<<< orphan*/  text; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  EXP_NUMBER ; 
 int /*<<< orphan*/  EXP_STRING ; 
 scalar_t__ TK_NUMBER ; 
 scalar_t__ TK_STRING ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC4(js_State *J)
{
	js_Ast *name;
	if (J->lookahead == TK_NUMBER) {
		name = FUNC1(J, EXP_NUMBER, J->number);
		FUNC3(J);
	} else if (J->lookahead == TK_STRING) {
		name = FUNC2(J, EXP_STRING, J->text);
		FUNC3(J);
	} else {
		name = FUNC0(J);
	}
	return name;
}