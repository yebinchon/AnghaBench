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
struct gate {int client_tag; int /*<<< orphan*/  watchdog; int /*<<< orphan*/  mp; int /*<<< orphan*/  broker; struct skynet_context* ctx; } ;
struct connection {int id; int /*<<< orphan*/  buffer; int /*<<< orphan*/  agent; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int PTYPE_TAG_DONTCOPY ; 
 int PTYPE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*,int) ; 
 int FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct gate *g, struct connection * c, int size) {
	struct skynet_context * ctx = g->ctx;
	int fd = c->id;
	if (fd <= 0) {
		// socket error
		return;
	}
	if (g->broker) {
		void * temp = FUNC1(size);
		FUNC0(&c->buffer,&g->mp,temp, size);
		FUNC2(ctx, 0, g->broker, g->client_tag | PTYPE_TAG_DONTCOPY, fd, temp, size);
		return;
	}
	if (c->agent) {
		void * temp = FUNC1(size);
		FUNC0(&c->buffer,&g->mp,temp, size);
		FUNC2(ctx, c->client, c->agent, g->client_tag | PTYPE_TAG_DONTCOPY, fd , temp, size);
	} else if (g->watchdog) {
		char * tmp = FUNC1(size + 32);
		int n = FUNC3(tmp,32,"%d data ",c->id);
		FUNC0(&c->buffer,&g->mp,tmp+n,size);
		FUNC2(ctx, 0, g->watchdog, PTYPE_TEXT | PTYPE_TAG_DONTCOPY, fd, tmp, size + n);
	}
}