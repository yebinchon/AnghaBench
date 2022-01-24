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
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* b; int /*<<< orphan*/  c; struct TYPE_5__* a; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
 scalar_t__ AST_LIST ; 
 int /*<<< orphan*/  COMMA ; 
#define  EXP_PROP_GET 130 
#define  EXP_PROP_SET 129 
#define  EXP_PROP_VAL 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(int d, js_Ast *list)
{
	FUNC4('{');
	if (list) {
		FUNC2();
		FUNC1(d+1);
	}
	while (list) {
		js_Ast *kv = list->a;
		FUNC0(list->type == AST_LIST);
		switch (kv->type) {
		default: break;
		case EXP_PROP_VAL:
			FUNC5(d+1, COMMA, kv->a);
			FUNC4(':'); FUNC8();
			FUNC5(d+1, COMMA, kv->b);
			break;
		case EXP_PROP_GET:
			FUNC6("get ");
			FUNC5(d+1, COMMA, kv->a);
			FUNC6("()"); FUNC8(); FUNC4('{'); FUNC2();
			FUNC7(d+1, kv->c);
			FUNC1(d+1); FUNC4('}');
			break;
		case EXP_PROP_SET:
			FUNC6("set ");
			FUNC5(d+1, COMMA, kv->a);
			FUNC4('(');
			FUNC3(d+1, kv->b);
			FUNC4(')'); FUNC8(); FUNC4('{'); FUNC2();
			FUNC7(d+1, kv->c);
			FUNC1(d+1); FUNC4('}');
			break;
		}
		list = list->b;
		if (list) {
			FUNC4(',');
			FUNC2();
			FUNC1(d+1);
		} else {
			FUNC2();
			FUNC1(d);
		}
	}
	FUNC4('}');
}