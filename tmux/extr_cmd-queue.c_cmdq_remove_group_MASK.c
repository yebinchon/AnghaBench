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
struct cmdq_item {scalar_t__ group; } ;

/* Variables and functions */
 struct cmdq_item* FUNC0 (struct cmdq_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdq_item*) ; 
 int /*<<< orphan*/  entry ; 

__attribute__((used)) static void
FUNC2(struct cmdq_item *item)
{
	struct cmdq_item	*this, *next;

	if (item->group == 0)
		return;
	this = FUNC0(item, entry);
	while (this != NULL) {
		next = FUNC0(this, entry);
		if (this->group == item->group)
			FUNC1(this);
		this = next;
	}
}