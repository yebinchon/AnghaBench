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
struct chmcPmgiChunkNode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chmcPmgiChunkNode*) ; 
 struct chmcPmgiChunkNode* FUNC1 (int) ; 

struct chmcPmgiChunkNode *FUNC2(void)
{
	struct chmcPmgiChunkNode *node;

	node = FUNC1(sizeof(struct chmcPmgiChunkNode));
	if (node)
		FUNC0(node);

	return node;
}