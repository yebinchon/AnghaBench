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
struct TYPE_3__ {struct TYPE_3__* right; scalar_t__ level; int /*<<< orphan*/  name; struct TYPE_3__* left; } ;
typedef  TYPE_1__ js_Property ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(js_State *J, js_Property *ref, int i)
{
	if (ref->left->level)
		i = FUNC2(J, ref->left, i);
	FUNC0(J, ref->name);
	FUNC1(J, -2, i++);
	if (ref->right->level)
		i = FUNC2(J, ref->right, i);
	return i;
}