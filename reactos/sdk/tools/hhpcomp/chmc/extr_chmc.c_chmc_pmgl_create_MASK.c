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
struct chmcPmglChunkNode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chmcPmglChunkNode*) ; 
 struct chmcPmglChunkNode* FUNC1 (int) ; 

struct chmcPmglChunkNode *FUNC2(void)
{
	struct chmcPmglChunkNode *node;

	node = FUNC1(sizeof(struct chmcPmglChunkNode));
	if (node)
		FUNC0(node);

	return node;
}