#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  G; scalar_t__ strict; TYPE_3__* E; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_11__ {int atts; } ;
typedef  TYPE_2__ js_Property ;
struct TYPE_12__ {struct TYPE_12__* outer; int /*<<< orphan*/  variables; } ;
typedef  TYPE_3__ js_Environment ;

/* Variables and functions */
 int JS_DONTCONF ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 

__attribute__((used)) static int FUNC4(js_State *J, const char *name)
{
	js_Environment *E = J->E;
	do {
		js_Property *ref = FUNC2(J, E->variables, name);
		if (ref) {
			if (ref->atts & JS_DONTCONF) {
				if (J->strict)
					FUNC3(J, "'%s' is non-configurable", name);
				return 0;
			}
			FUNC1(J, E->variables, name);
			return 1;
		}
		E = E->outer;
	} while (E);
	return FUNC0(J, J->G, name);
}