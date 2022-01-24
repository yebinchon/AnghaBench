#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * node; } ;
struct TYPE_7__ {int /*<<< orphan*/  count; TYPE_1__ call; } ;
typedef  TYPE_2__ gapfill_walker_context ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WindowFunc ; 
 int FUNC1 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,TYPE_2__*),TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC2(Node *node, gapfill_walker_context *context)
{
	if (node == NULL)
		return false;

	if (FUNC0(node, WindowFunc))
	{
		context->call.node = node;
		context->count++;
	}

	return FUNC1(node, window_function_walker, context);
}