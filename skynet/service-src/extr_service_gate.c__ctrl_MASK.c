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
struct skynet_context {int dummy; } ;
struct gate {int listen_id; int /*<<< orphan*/  hash; int /*<<< orphan*/  broker; struct skynet_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct skynet_context*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct skynet_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct skynet_context*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct skynet_context*,int) ; 
 char* FUNC9 (char**,char*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(struct gate * g, const void * msg, int sz) {
	struct skynet_context * ctx = g->ctx;
	char tmp[sz+1];
	FUNC4(tmp, msg, sz);
	tmp[sz] = '\0';
	char * command = tmp;
	int i;
	if (sz == 0)
		return;
	for (i=0;i<sz;i++) {
		if (command[i]==' ') {
			break;
		}
	}
	if (FUNC3(command,"kick",i)==0) {
		FUNC1(tmp, sz, i);
		int uid = FUNC10(command , NULL, 10);
		int id = FUNC2(&g->hash, uid);
		if (id>=0) {
			FUNC7(ctx, uid);
		}
		return;
	}
	if (FUNC3(command,"forward",i)==0) {
		FUNC1(tmp, sz, i);
		char * client = tmp;
		char * idstr = FUNC9(&client, " ");
		if (client == NULL) {
			return;
		}
		int id = FUNC10(idstr , NULL, 10);
		char * agent = FUNC9(&client, " ");
		if (client == NULL) {
			return;
		}
		uint32_t agent_handle = FUNC11(agent+1, NULL, 16);
		uint32_t client_handle = FUNC11(client+1, NULL, 16);
		FUNC0(g, id, agent_handle, client_handle);
		return;
	}
	if (FUNC3(command,"broker",i)==0) {
		FUNC1(tmp, sz, i);
		g->broker = FUNC6(ctx, command);
		return;
	}
	if (FUNC3(command,"start",i) == 0) {
		FUNC1(tmp, sz, i);
		int uid = FUNC10(command , NULL, 10);
		int id = FUNC2(&g->hash, uid);
		if (id>=0) {
			FUNC8(ctx, uid);
		}
		return;
	}
	if (FUNC3(command, "close", i) == 0) {
		if (g->listen_id >= 0) {
			FUNC7(ctx, g->listen_id);
			g->listen_id = -1;
		}
		return;
	}
	FUNC5(ctx, "[gate] Unkown command : %s", command);
}