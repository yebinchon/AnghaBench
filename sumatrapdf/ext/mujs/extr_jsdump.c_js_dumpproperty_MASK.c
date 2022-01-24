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
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_3__ {char* name; struct TYPE_3__* right; scalar_t__ level; int /*<<< orphan*/  value; struct TYPE_3__* left; } ;
typedef  TYPE_1__ js_Property ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ minify ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(js_State *J, js_Property *node)
{
	minify = 0;
	if (node->left->level)
		FUNC2(J, node->left);
	FUNC1("\t%s: ", node->name);
	FUNC0(J, node->value);
	FUNC1(",\n");
	if (node->right->level)
		FUNC2(J, node->right);
}