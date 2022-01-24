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
typedef  char* sds ;

/* Variables and functions */
 int CMD_ADMIN ; 
 int CMD_DENYOOM ; 
 int CMD_FAST ; 
 int CMD_LOADING ; 
 int CMD_MODULE_GETKEYS ; 
 int CMD_MODULE_NO_CLUSTER ; 
 int CMD_NOSCRIPT ; 
 int CMD_PUBSUB ; 
 int CMD_RANDOM ; 
 int CMD_READONLY ; 
 int CMD_SKIP_MONITOR ; 
 int CMD_STALE ; 
 int CMD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char**,int) ; 
 char** FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(char *s) {
    int count, j;
    int flags = 0;
    sds *tokens = FUNC1(s,FUNC3(s)," ",1,&count);
    for (j = 0; j < count; j++) {
        char *t = tokens[j];
        if (!FUNC2(t,"write")) flags |= CMD_WRITE;
        else if (!FUNC2(t,"readonly")) flags |= CMD_READONLY;
        else if (!FUNC2(t,"admin")) flags |= CMD_ADMIN;
        else if (!FUNC2(t,"deny-oom")) flags |= CMD_DENYOOM;
        else if (!FUNC2(t,"deny-script")) flags |= CMD_NOSCRIPT;
        else if (!FUNC2(t,"allow-loading")) flags |= CMD_LOADING;
        else if (!FUNC2(t,"pubsub")) flags |= CMD_PUBSUB;
        else if (!FUNC2(t,"random")) flags |= CMD_RANDOM;
        else if (!FUNC2(t,"allow-stale")) flags |= CMD_STALE;
        else if (!FUNC2(t,"no-monitor")) flags |= CMD_SKIP_MONITOR;
        else if (!FUNC2(t,"fast")) flags |= CMD_FAST;
        else if (!FUNC2(t,"getkeys-api")) flags |= CMD_MODULE_GETKEYS;
        else if (!FUNC2(t,"no-cluster")) flags |= CMD_MODULE_NO_CLUSTER;
        else break;
    }
    FUNC0(tokens,count);
    if (j != count) return -1; /* Some token not processed correctly. */
    return flags;
}