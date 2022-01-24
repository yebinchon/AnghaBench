#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_xml ;
struct TYPE_3__ {int type; char* key; struct TYPE_3__* next; int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ fz_css_condition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(fz_css_condition *cond, fz_xml *node)
{
	if (!cond)
		return 1;

	switch (cond->type) {
	default: return 0;
	case ':': return 0; /* don't support pseudo-classes */
	case '#': if (!FUNC2(node, "id", cond->val)) return 0; break;
	case '.': if (!FUNC1(node, "class", cond->val)) return 0; break;
	case '[': if (!FUNC0(node, cond->key)) return 0; break;
	case '=': if (!FUNC2(node, cond->key, cond->val)) return 0; break;
	case '~': if (!FUNC1(node, cond->key, cond->val)) return 0; break;
	case '|': if (!FUNC2(node, cond->key, cond->val)) return 0; break;
	}

	return FUNC3(cond->next, node);
}