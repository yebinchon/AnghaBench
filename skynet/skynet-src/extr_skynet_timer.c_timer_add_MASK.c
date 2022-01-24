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
struct timer_node {scalar_t__ expire; } ;
struct timer {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct timer*,struct timer_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_node*,void*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct timer *T,void *arg,size_t sz,int time) {
	struct timer_node *node = (struct timer_node *)FUNC4(sizeof(*node)+sz);
	FUNC3(node+1,arg,sz);

	FUNC0(T);

		node->expire=time+T->time;
		FUNC2(T,node);

	FUNC1(T);
}