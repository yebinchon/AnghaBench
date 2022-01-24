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
struct messagepool_list {struct messagepool_list* next; } ;
struct messagepool {int /*<<< orphan*/ * freelist; struct messagepool_list* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct messagepool_list*) ; 

__attribute__((used)) static void 
FUNC1(struct messagepool *pool) {
	struct messagepool_list *p = pool->pool;
	while(p) {
		struct messagepool_list *tmp = p;
		p=p->next;
		FUNC0(tmp);
	}
	pool->pool = NULL;
	pool->freelist = NULL;
}