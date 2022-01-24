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
struct redact_node {TYPE_1__* rt_arg; int /*<<< orphan*/  record; } ;
typedef  int /*<<< orphan*/  avl_tree_t ;
struct TYPE_2__ {int error_code; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct redact_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct redact_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(avl_tree_t *start_tree, avl_tree_t *end_tree,
    struct redact_node *redact_node)
{
	FUNC1(start_tree, redact_node);
	FUNC1(end_tree, redact_node);
	redact_node->record = FUNC2(&redact_node->rt_arg->q,
	    redact_node->record);
	FUNC0(end_tree, redact_node);
	FUNC0(start_tree, redact_node);
	return (redact_node->rt_arg->error_code);
}