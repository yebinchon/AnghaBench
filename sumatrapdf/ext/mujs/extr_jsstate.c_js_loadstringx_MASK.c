#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * GE; int /*<<< orphan*/ * E; scalar_t__ strict; scalar_t__ default_strict; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Function ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(js_State *J, const char *filename, const char *source, int iseval)
{
	js_Ast *P;
	js_Function *F;

	if (FUNC6(J)) {
		FUNC1(J);
		FUNC5(J);
	}

	P = FUNC2(J, filename, source);
	F = FUNC0(J, P, iseval ? J->strict : J->default_strict);
	FUNC1(J);
	FUNC4(J, F, iseval ? (J->strict ? J->E : NULL) : J->GE);

	FUNC3(J);
}