#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct chmcTreeNode {int flags; struct chmcTreeNode* buf; struct chmcTreeNode* name; } ;

/* Variables and functions */
 int CHMC_TNFL_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct chmcTreeNode*) ; 
 int /*<<< orphan*/  FUNC1 (struct chmcTreeNode*) ; 

void FUNC2( struct chmcTreeNode *node )
{
	FUNC0(node);
	FUNC0(node->name);

	FUNC1(node->name);
	if (node->buf && !(node->flags & CHMC_TNFL_STATIC))
		FUNC1(node->buf);
	FUNC1(node);
}