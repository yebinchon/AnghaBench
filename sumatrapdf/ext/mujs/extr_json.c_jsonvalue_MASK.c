#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int lookahead; char* text; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
#define  TK_FALSE 132 
#define  TK_NULL 131 
#define  TK_NUMBER 130 
#define  TK_STRING 129 
#define  TK_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13(js_State *J)
{
	int i;
	const char *name;

	switch (J->lookahead) {
	case TK_STRING:
		FUNC6(J, J->text);
		FUNC12(J);
		break;

	case TK_NUMBER:
		FUNC5(J, J->number);
		FUNC12(J);
		break;

	case '{':
		FUNC2(J);
		FUNC12(J);
		if (FUNC10(J, '}'))
			return;
		do {
			if (J->lookahead != TK_STRING)
				FUNC9(J, "JSON: unexpected token: %s (expected string)", FUNC0(J->lookahead));
			name = J->text;
			FUNC12(J);
			FUNC11(J, ':');
			FUNC13(J);
			FUNC8(J, -2, name);
		} while (FUNC10(J, ','));
		FUNC11(J, '}');
		break;

	case '[':
		FUNC1(J);
		FUNC12(J);
		i = 0;
		if (FUNC10(J, ']'))
			return;
		do {
			FUNC13(J);
			FUNC7(J, -2, i++);
		} while (FUNC10(J, ','));
		FUNC11(J, ']');
		break;

	case TK_TRUE:
		FUNC3(J, 1);
		FUNC12(J);
		break;

	case TK_FALSE:
		FUNC3(J, 0);
		FUNC12(J);
		break;

	case TK_NULL:
		FUNC4(J);
		FUNC12(J);
		break;

	default:
		FUNC9(J, "JSON: unexpected token: %s", FUNC0(J->lookahead));
	}
}