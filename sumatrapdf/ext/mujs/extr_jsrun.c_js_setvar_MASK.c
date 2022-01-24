#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  G; scalar_t__ strict; TYPE_3__* E; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_16__ {int atts; int /*<<< orphan*/  value; scalar_t__ setter; } ;
typedef  TYPE_2__ js_Property ;
struct TYPE_17__ {struct TYPE_17__* outer; scalar_t__ variables; } ;
typedef  TYPE_3__ js_Environment ;

/* Variables and functions */
 int JS_READONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC9(js_State *J, const char *name)
{
	js_Environment *E = J->E;
	do {
		js_Property *ref = FUNC1(J, E->variables, name);
		if (ref) {
			if (ref->setter) {
				FUNC5(J, ref->setter);
				FUNC5(J, E->variables);
				FUNC3(J, -3);
				FUNC2(J, 1);
				FUNC4(J, 1);
				return;
			}
			if (!(ref->atts & JS_READONLY))
				ref->value = *FUNC8(J, -1);
			else if (J->strict)
				FUNC7(J, "'%s' is read-only", name);
			return;
		}
		E = E->outer;
	} while (E);
	if (J->strict)
		FUNC6(J, "assignment to undeclared variable '%s'", name);
	FUNC0(J, J->G, name);
}