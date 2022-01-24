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
struct skynet_context {struct message_queue* queue; } ;
struct message_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,struct skynet_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct message_queue*,struct skynet_message*) ; 

void 
FUNC2(struct skynet_context * ctx) {
	// for skynet_error
	struct skynet_message msg;
	struct message_queue *q = ctx->queue;
	while (!FUNC1(q,&msg)) {
		FUNC0(ctx, &msg);
	}
}