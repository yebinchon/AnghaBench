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
struct skynet_socket_message {int type; int id; int ud; int /*<<< orphan*/  buffer; } ;
struct skynet_context {int dummy; } ;
struct gate {int listen_id; int /*<<< orphan*/  hash; struct connection* conn; int /*<<< orphan*/  mp; struct skynet_context* ctx; } ;
struct connection {int id; char* remote_name; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
#define  SKYNET_SOCKET_TYPE_ACCEPT 133 
#define  SKYNET_SOCKET_TYPE_CLOSE 132 
#define  SKYNET_SOCKET_TYPE_CONNECT 131 
#define  SKYNET_SOCKET_TYPE_DATA 130 
#define  SKYNET_SOCKET_TYPE_ERROR 129 
#define  SKYNET_SOCKET_TYPE_WARNING 128 
 int /*<<< orphan*/  FUNC0 (struct gate*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gate*,struct connection*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct skynet_socket_message const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct skynet_context*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct skynet_context*,int) ; 

__attribute__((used)) static void
FUNC13(struct gate *g, const struct skynet_socket_message * message, int sz) {
	struct skynet_context * ctx = g->ctx;
	switch(message->type) {
	case SKYNET_SOCKET_TYPE_DATA: {
		int id = FUNC6(&g->hash, message->id);
		if (id>=0) {
			struct connection *c = &g->conn[id];
			FUNC3(g, c, message->id, message->buffer, message->ud);
		} else {
			FUNC10(ctx, "Drop unknown connection %d message", message->id);
			FUNC12(ctx, message->id);
			FUNC11(message->buffer);
		}
		break;
	}
	case SKYNET_SOCKET_TYPE_CONNECT: {
		if (message->id == g->listen_id) {
			// start listening
			break;
		}
		int id = FUNC6(&g->hash, message->id);
		if (id<0) {
			FUNC10(ctx, "Close unknown connection %d", message->id);
			FUNC12(ctx, message->id);
		}
		break;
	}
	case SKYNET_SOCKET_TYPE_CLOSE:
	case SKYNET_SOCKET_TYPE_ERROR: {
		int id = FUNC7(&g->hash, message->id);
		if (id>=0) {
			struct connection *c = &g->conn[id];
			FUNC2(&c->buffer,&g->mp);
			FUNC9(c, 0, sizeof(*c));
			c->id = -1;
			FUNC0(g, "%d close", message->id);
		}
		break;
	}
	case SKYNET_SOCKET_TYPE_ACCEPT:
		// report accept, then it will be get a SKYNET_SOCKET_TYPE_CONNECT message
		FUNC1(g->listen_id == message->id);
		if (FUNC4(&g->hash)) {
			FUNC12(ctx, message->ud);
		} else {
			struct connection *c = &g->conn[FUNC5(&g->hash, message->ud)];
			if (sz >= sizeof(c->remote_name)) {
				sz = sizeof(c->remote_name) - 1;
			}
			c->id = message->ud;
			FUNC8(c->remote_name, message+1, sz);
			c->remote_name[sz] = '\0';
			FUNC0(g, "%d open %d %s:0",c->id, c->id, c->remote_name);
			FUNC10(ctx, "socket open: %x", c->id);
		}
		break;
	case SKYNET_SOCKET_TYPE_WARNING:
		FUNC10(ctx, "fd (%d) send buffer (%d)K", message->id, message->ud);
		break;
	}
}