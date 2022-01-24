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
struct queue {size_t head; size_t tail; size_t cap; struct netpack* queue; } ;
struct netpack {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct queue* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(lua_State *L) {
	struct queue * q = FUNC2(L, 1);
	if (q == NULL || q->head == q->tail)
		return 0;
	struct netpack *np = &q->queue[q->head];
	if (++q->head >= q->cap) {
		q->head = 0;
	}
	FUNC0(L, np->id);
	FUNC1(L, np->buffer);
	FUNC0(L, np->size);

	return 3;
}