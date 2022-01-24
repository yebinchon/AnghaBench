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
typedef  int /*<<< orphan*/  uint32_t ;
struct skynet_monitor {int dummy; } ;
struct skynet_message {int /*<<< orphan*/  data; int /*<<< orphan*/  source; } ;
struct skynet_context {struct message_queue* queue; int /*<<< orphan*/ * cb; } ;
struct message_queue {int dummy; } ;
struct drop_t {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*,struct skynet_message*) ; 
 int /*<<< orphan*/  drop_message ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct message_queue* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct message_queue*) ; 
 struct skynet_context* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skynet_monitor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct message_queue*) ; 
 int FUNC10 (struct message_queue*) ; 
 int FUNC11 (struct message_queue*) ; 
 scalar_t__ FUNC12 (struct message_queue*,struct skynet_message*) ; 
 int /*<<< orphan*/  FUNC13 (struct message_queue*,int /*<<< orphan*/ ,struct drop_t*) ; 

struct message_queue * 
FUNC14(struct skynet_monitor *sm, struct message_queue *q, int weight) {
	if (q == NULL) {
		q = FUNC5();
		if (q==NULL)
			return NULL;
	}

	uint32_t handle = FUNC9(q);

	struct skynet_context * ctx = FUNC7(handle);
	if (ctx == NULL) {
		struct drop_t d = { handle };
		FUNC13(q, drop_message, &d);
		return FUNC5();
	}

	int i,n=1;
	struct skynet_message msg;

	for (i=0;i<n;i++) {
		if (FUNC12(q,&msg)) {
			FUNC2(ctx);
			return FUNC5();
		} else if (i==0 && weight >= 0) {
			n = FUNC10(q);
			n >>= weight;
		}
		int overload = FUNC11(q);
		if (overload) {
			FUNC3(ctx, "May overload, message queue length = %d", overload);
		}

		FUNC8(sm, msg.source , handle);

		if (ctx->cb == NULL) {
			FUNC4(msg.data);
		} else {
			FUNC1(ctx, &msg);
		}

		FUNC8(sm, 0,0);
	}

	FUNC0(q == ctx->queue);
	struct message_queue *nq = FUNC5();
	if (nq) {
		// If global mq is not empty , push q back, and return next queue (nq)
		// Else (global mq is empty or block, don't push q back, and return q again (for next dispatch)
		FUNC6(q);
		q = nq;
	} 
	FUNC2(ctx);

	return q;
}