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
struct gate {int /*<<< orphan*/  listen_id; struct skynet_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLOG ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct gate *g, char * listen_addr) {
	struct skynet_context * ctx = g->ctx;
	char * portstr = FUNC3(listen_addr,':');
	const char * host = "";
	int port;
	if (portstr == NULL) {
		port = FUNC4(listen_addr, NULL, 10);
		if (port <= 0) {
			FUNC0(ctx, "Invalid gate address %s",listen_addr);
			return 1;
		}
	} else {
		port = FUNC4(portstr + 1, NULL, 10);
		if (port <= 0) {
			FUNC0(ctx, "Invalid gate address %s",listen_addr);
			return 1;
		}
		portstr[0] = '\0';
		host = listen_addr;
	}
	g->listen_id = FUNC1(ctx, host, port, BACKLOG);
	if (g->listen_id < 0) {
		return 1;
	}
	FUNC2(ctx, g->listen_id);
	return 0;
}