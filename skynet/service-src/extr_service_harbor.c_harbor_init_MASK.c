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
typedef  scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;
struct harbor {int id; scalar_t__ slave; struct skynet_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  mainloop ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,struct harbor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int*,scalar_t__*) ; 

int
FUNC3(struct harbor *h, struct skynet_context *ctx, const char * args) {
	h->ctx = ctx;
	int harbor_id = 0;
	uint32_t slave = 0;
	FUNC2(args,"%d %u", &harbor_id, &slave);
	if (slave == 0) {
		return 1;
	}
	h->id = harbor_id;
	h->slave = slave;
	FUNC0(ctx, h, mainloop);
	FUNC1(ctx);

	return 0;
}