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
struct harbor_msg_queue {int size; void* data; scalar_t__ tail; scalar_t__ head; } ;
struct harbor_msg {int dummy; } ;

/* Variables and functions */
 int DEFAULT_QUEUE_SIZE ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static struct harbor_msg_queue *
FUNC1() {
	struct harbor_msg_queue * queue = FUNC0(sizeof(*queue));
	queue->size = DEFAULT_QUEUE_SIZE;
	queue->head = 0;
	queue->tail = 0;
	queue->data = FUNC0(DEFAULT_QUEUE_SIZE * sizeof(struct harbor_msg));

	return queue;
}