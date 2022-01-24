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
struct timer_node {struct timer_node* next; } ;
struct timer {int /*<<< orphan*/ ** t; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer*,struct timer_node*) ; 
 struct timer_node* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct timer *T, int level, int idx) {
	struct timer_node *current = FUNC1(&T->t[level][idx]);
	while (current) {
		struct timer_node *temp=current->next;
		FUNC0(T,current);
		current=temp;
	}
}