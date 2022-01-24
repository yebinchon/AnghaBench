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
struct slave {int fd; struct harbor_msg_queue* queue; } ;
struct harbor_msg_queue {int dummy; } ;
struct harbor_msg {int /*<<< orphan*/  buffer; int /*<<< orphan*/  header; int /*<<< orphan*/  size; } ;
struct harbor {int /*<<< orphan*/  ctx; struct slave* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct harbor_msg* FUNC1 (struct harbor_msg_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct harbor_msg_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct harbor *h, int id) {
	struct slave *s = &h->s[id];
	int fd = s->fd;
	FUNC0(fd != 0);

	struct harbor_msg_queue *queue = s->queue;
	if (queue == NULL)
		return;

	struct harbor_msg * m;
	while ((m = FUNC1(queue)) != NULL) {
		FUNC3(h->ctx, fd, m->buffer, m->size, &m->header);
		FUNC4(m->buffer);
	}
	FUNC2(queue);
	s->queue = NULL;
}