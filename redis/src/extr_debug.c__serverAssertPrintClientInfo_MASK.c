#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  conninfo ;
struct TYPE_4__ {int argc; TYPE_2__** argv; int /*<<< orphan*/  conn; scalar_t__ flags; } ;
typedef  TYPE_1__ client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int type; int encoding; int /*<<< orphan*/  refcount; scalar_t__ ptr; } ;

/* Variables and functions */
 int CONN_INFO_LEN ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int) ; 

void FUNC5(const client *c) {
    int j;
    char conninfo[CONN_INFO_LEN];

    FUNC0();
    FUNC3(LL_WARNING,"=== ASSERTION FAILED CLIENT CONTEXT ===");
    FUNC3(LL_WARNING,"client->flags = %llu", (unsigned long long) c->flags);
    FUNC3(LL_WARNING,"client->conn = %s", FUNC1(c->conn, conninfo, sizeof(conninfo)));
    FUNC3(LL_WARNING,"client->argc = %d", c->argc);
    for (j=0; j < c->argc; j++) {
        char buf[128];
        char *arg;

        if (c->argv[j]->type == OBJ_STRING && FUNC2(c->argv[j])) {
            arg = (char*) c->argv[j]->ptr;
        } else {
            FUNC4(buf,sizeof(buf),"Object type: %u, encoding: %u",
                c->argv[j]->type, c->argv[j]->encoding);
            arg = buf;
        }
        FUNC3(LL_WARNING,"client->argv[%d] = \"%s\" (refcount: %d)",
            j, arg, c->argv[j]->refcount);
    }
}