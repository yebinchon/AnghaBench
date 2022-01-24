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
struct TYPE_10__ {TYPE_3__* E; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_11__ {int /*<<< orphan*/  value; scalar_t__ getter; } ;
typedef  TYPE_2__ js_Property ;
struct TYPE_12__ {struct TYPE_12__* outer; scalar_t__ variables; } ;
typedef  TYPE_3__ js_Environment ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(js_State *J, const char *name)
{
	js_Environment *E = J->E;
	do {
		js_Property *ref = FUNC0(J, E->variables, name);
		if (ref) {
			if (ref->getter) {
				FUNC2(J, ref->getter);
				FUNC2(J, E->variables);
				FUNC1(J, 0);
			} else {
				FUNC3(J, ref->value);
			}
			return 1;
		}
		E = E->outer;
	} while (E);
	return 0;
}