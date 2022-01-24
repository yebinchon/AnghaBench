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
struct message_queue {int dummy; } ;
typedef  int /*<<< orphan*/  (* message_drop ) (struct skynet_message*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct message_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct message_queue*,struct skynet_message*) ; 

__attribute__((used)) static void
FUNC2(struct message_queue *q, message_drop drop_func, void *ud) {
	struct skynet_message msg;
	while(!FUNC1(q, &msg)) {
		drop_func(&msg, ud);
	}
	FUNC0(q);
}