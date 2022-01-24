#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct skynet_context {int dummy; } ;
struct gate {int max_connection; int client_tag; int header_size; TYPE_1__* conn; int /*<<< orphan*/  hash; struct skynet_context* ctx; int /*<<< orphan*/  watchdog; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int PTYPE_CLIENT ; 
 int /*<<< orphan*/  _cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,struct gate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,char*,...) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct skynet_context*,char*) ; 
 int FUNC6 (char*,char*,char*,char*,char*,int*,int*) ; 
 int FUNC7 (struct gate*,char*) ; 
 int FUNC8 (char*) ; 

int
FUNC9(struct gate *g , struct skynet_context * ctx, char * parm) {
	if (parm == NULL)
		return 1;
	int max = 0;
	int sz = FUNC8(parm)+1;
	char watchdog[sz];
	char binding[sz];
	int client_tag = 0;
	char header;
	int n = FUNC6(parm, "%c %s %s %d %d", &header, watchdog, binding, &client_tag, &max);
	if (n<4) {
		FUNC3(ctx, "Invalid gate parm %s",parm);
		return 1;
	}
	if (max <=0 ) {
		FUNC3(ctx, "Need max connection");
		return 1;
	}
	if (header != 'S' && header !='L') {
		FUNC3(ctx, "Invalid data header style");
		return 1;
	}

	if (client_tag == 0) {
		client_tag = PTYPE_CLIENT;
	}
	if (watchdog[0] == '!') {
		g->watchdog = 0;
	} else {
		g->watchdog = FUNC5(ctx, watchdog);
		if (g->watchdog == 0) {
			FUNC3(ctx, "Invalid watchdog %s",watchdog);
			return 1;
		}
	}

	g->ctx = ctx;

	FUNC0(&g->hash, max);
	g->conn = FUNC4(max * sizeof(struct connection));
	FUNC1(g->conn, 0, max *sizeof(struct connection));
	g->max_connection = max;
	int i;
	for (i=0;i<max;i++) {
		g->conn[i].id = -1;
	}
	
	g->client_tag = client_tag;
	g->header_size = header=='S' ? 2 : 4;

	FUNC2(ctx,g,_cb);

	return FUNC7(g,binding);
}