#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {struct TYPE_4__* right; scalar_t__ level; struct TYPE_4__* left; } ;
typedef  TYPE_1__ js_Property ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(js_State *J, js_Property *node)
{
	if (node->left->level) FUNC1(J, node->left);
	if (node->right->level) FUNC1(J, node->right);
	FUNC0(J, node);
}