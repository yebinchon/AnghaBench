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
struct skynet_message {int dummy; } ;
struct skynet_context {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skynet_context*) ; 
 struct skynet_context* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct skynet_message*) ; 

int
FUNC3(uint32_t handle, struct skynet_message *message) {
	struct skynet_context * ctx = FUNC1(handle);
	if (ctx == NULL) {
		return -1;
	}
	FUNC2(ctx->queue, message);
	FUNC0(ctx);

	return 0;
}