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
struct skynet_context {int dummy; } ;
struct gate {int /*<<< orphan*/  mp; struct skynet_context* ctx; int /*<<< orphan*/  header_size; } ;
struct connection {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gate*,struct connection*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct skynet_context*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct skynet_context*,int) ; 

__attribute__((used)) static void
FUNC7(struct gate *g, struct connection *c, int id, void * data, int sz) {
	FUNC2(&c->buffer,&g->mp, data, sz);
	for (;;) {
		int size = FUNC3(&c->buffer, &g->mp, g->header_size);
		if (size < 0) {
			return;
		} else if (size > 0) {
			if (size >= 0x1000000) {
				struct skynet_context * ctx = g->ctx;
				FUNC1(&c->buffer,&g->mp);
				FUNC6(ctx, id);
				FUNC5(ctx, "Recv socket message > 16M");
				return;
			} else {
				FUNC0(g, c, size);
				FUNC4(&c->buffer);
			}
		}
	}
}