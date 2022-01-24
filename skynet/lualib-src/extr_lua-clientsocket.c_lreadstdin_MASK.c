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
struct queue {size_t head; size_t tail; char** queue; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 size_t QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct queue* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	struct queue *q = FUNC2(L, FUNC3(1));
	FUNC4(&q->lock);
	if (q->head == q->tail) {
		FUNC5(&q->lock);
		return 0;
	}
	char * str = q->queue[q->head];
	if (++q->head >= QUEUE_SIZE) {
		q->head = 0;
	}
	FUNC5(&q->lock);
	FUNC1(L, str);
	FUNC0(str);
	return 1;
}