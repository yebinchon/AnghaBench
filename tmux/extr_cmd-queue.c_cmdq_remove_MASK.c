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
struct cmdq_item {scalar_t__ references; struct cmdq_item* name; int /*<<< orphan*/  queue; int /*<<< orphan*/ * cmdlist; int /*<<< orphan*/ * client; struct cmdq_item* shared; int /*<<< orphan*/ * formats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cmdq_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct cmdq_item *item)
{
	if (item->shared != NULL && --item->shared->references == 0) {
		if (item->shared->formats != NULL)
			FUNC2(item->shared->formats);
		FUNC3(item->shared);
	}

	if (item->client != NULL)
		FUNC4(item->client);

	if (item->cmdlist != NULL)
		FUNC1(item->cmdlist);

	FUNC0(item->queue, item, entry);

	FUNC3(item->name);
	FUNC3(item);
}