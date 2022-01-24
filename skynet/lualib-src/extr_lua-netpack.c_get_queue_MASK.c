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
struct queue {int /*<<< orphan*/ ** hash; scalar_t__ tail; scalar_t__ head; int /*<<< orphan*/  cap; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int HASHSIZE ; 
 int /*<<< orphan*/  QUEUESIZE ; 
 struct queue* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct queue* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct queue *
FUNC3(lua_State *L) {
	struct queue *q = FUNC2(L,1);
	if (q == NULL) {
		q = FUNC0(L, sizeof(struct queue));
		q->cap = QUEUESIZE;
		q->head = 0;
		q->tail = 0;
		int i;
		for (i=0;i<HASHSIZE;i++) {
			q->hash[i] = NULL;
		}
		FUNC1(L, 1);
	}
	return q;
}