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
struct gate {int max_connection; scalar_t__ id; scalar_t__ listen_id; struct gate* conn; int /*<<< orphan*/  hash; int /*<<< orphan*/  mp; struct skynet_context* ctx; } ;
struct connection {int max_connection; scalar_t__ id; scalar_t__ listen_id; struct connection* conn; int /*<<< orphan*/  hash; int /*<<< orphan*/  mp; struct skynet_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gate*) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,scalar_t__) ; 

void
FUNC4(struct gate *g) {
	int i;
	struct skynet_context *ctx = g->ctx;
	for (i=0;i<g->max_connection;i++) {
		struct connection *c = &g->conn[i];
		if (c->id >=0) {
			FUNC3(ctx, c->id);
		}
	}
	if (g->listen_id >= 0) {
		FUNC3(ctx, g->listen_id);
	}
	FUNC1(&g->mp);
	FUNC0(&g->hash);
	FUNC2(g->conn);
	FUNC2(g);
}