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
struct skynet_message {int dummy; } ;
struct message_queue {int cap; int head; int tail; struct skynet_message* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_message*) ; 
 struct skynet_message* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct message_queue *q) {
	struct skynet_message *new_queue = FUNC1(sizeof(struct skynet_message) * q->cap * 2);
	int i;
	for (i=0;i<q->cap;i++) {
		new_queue[i] = q->queue[(q->head + i) % q->cap];
	}
	q->head = 0;
	q->tail = q->cap;
	q->cap *= 2;
	
	FUNC0(q->queue);
	q->queue = new_queue;
}