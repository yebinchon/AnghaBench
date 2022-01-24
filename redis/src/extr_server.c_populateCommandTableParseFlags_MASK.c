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
typedef  int uint64_t ;
struct redisCommand {int flags; } ;
typedef  char* sds ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int CMD_ADMIN ; 
 int CMD_ASKING ; 
 int CMD_CATEGORY_ADMIN ; 
 int CMD_CATEGORY_DANGEROUS ; 
 int CMD_CATEGORY_FAST ; 
 int CMD_CATEGORY_PUBSUB ; 
 int CMD_CATEGORY_READ ; 
 int CMD_CATEGORY_SLOW ; 
 int CMD_CATEGORY_WRITE ; 
 int CMD_DENYOOM ; 
 int CMD_FAST ; 
 int CMD_LOADING ; 
 int CMD_NOSCRIPT ; 
 int CMD_PUBSUB ; 
 int CMD_RANDOM ; 
 int CMD_READONLY ; 
 int CMD_SKIP_MONITOR ; 
 int CMD_SKIP_SLOWLOG ; 
 int CMD_SORT_FOR_SCRIPT ; 
 int CMD_STALE ; 
 int CMD_WRITE ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC1 (char**,int) ; 
 char** FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int FUNC4(struct redisCommand *c, char *strflags) {
    int argc;
    sds *argv;

    /* Split the line into arguments for processing. */
    argv = FUNC2(strflags,&argc);
    if (argv == NULL) return C_ERR;

    for (int j = 0; j < argc; j++) {
        char *flag = argv[j];
        if (!FUNC3(flag,"write")) {
            c->flags |= CMD_WRITE|CMD_CATEGORY_WRITE;
        } else if (!FUNC3(flag,"read-only")) {
            c->flags |= CMD_READONLY|CMD_CATEGORY_READ;
        } else if (!FUNC3(flag,"use-memory")) {
            c->flags |= CMD_DENYOOM;
        } else if (!FUNC3(flag,"admin")) {
            c->flags |= CMD_ADMIN|CMD_CATEGORY_ADMIN|CMD_CATEGORY_DANGEROUS;
        } else if (!FUNC3(flag,"pub-sub")) {
            c->flags |= CMD_PUBSUB|CMD_CATEGORY_PUBSUB;
        } else if (!FUNC3(flag,"no-script")) {
            c->flags |= CMD_NOSCRIPT;
        } else if (!FUNC3(flag,"random")) {
            c->flags |= CMD_RANDOM;
        } else if (!FUNC3(flag,"to-sort")) {
            c->flags |= CMD_SORT_FOR_SCRIPT;
        } else if (!FUNC3(flag,"ok-loading")) {
            c->flags |= CMD_LOADING;
        } else if (!FUNC3(flag,"ok-stale")) {
            c->flags |= CMD_STALE;
        } else if (!FUNC3(flag,"no-monitor")) {
            c->flags |= CMD_SKIP_MONITOR;
        } else if (!FUNC3(flag,"no-slowlog")) {
            c->flags |= CMD_SKIP_SLOWLOG;
        } else if (!FUNC3(flag,"cluster-asking")) {
            c->flags |= CMD_ASKING;
        } else if (!FUNC3(flag,"fast")) {
            c->flags |= CMD_FAST | CMD_CATEGORY_FAST;
        } else {
            /* Parse ACL categories here if the flag name starts with @. */
            uint64_t catflag;
            if (flag[0] == '@' &&
                (catflag = FUNC0(flag+1)) != 0)
            {
                c->flags |= catflag;
            } else {
                FUNC1(argv,argc);
                return C_ERR;
            }
        }
    }
    /* If it's not @fast is @slow in this binary world. */
    if (!(c->flags & CMD_CATEGORY_FAST)) c->flags |= CMD_CATEGORY_SLOW;

    FUNC1(argv,argc);
    return C_OK;
}