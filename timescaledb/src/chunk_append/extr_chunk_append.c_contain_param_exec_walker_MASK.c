#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ paramkind; } ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PARAM_EXEC ; 
 int /*<<< orphan*/  Param ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,void*),void*) ; 

__attribute__((used)) static bool
FUNC3(Node *node, void *context)
{
	if (node == NULL)
		return false;

	if (FUNC0(node, Param))
		return FUNC1(Param, node)->paramkind == PARAM_EXEC;

	return FUNC2(node, contain_param_exec_walker, context);
}