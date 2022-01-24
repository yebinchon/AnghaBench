#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sigaction {int /*<<< orphan*/  sa_handler; scalar_t__ sa_flags; int /*<<< orphan*/  sa_mask; } ;
typedef  char* sds ;
typedef  int pid_t ;
struct TYPE_8__ {int flags; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_9__ {int forked; int active; int /*<<< orphan*/  lines; int /*<<< orphan*/  src; int /*<<< orphan*/  conn; int /*<<< orphan*/  children; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int CLIENT_LUA_DEBUG_SYNC ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_4__ ldb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(client *c) {
    ldb.forked = (c->flags & CLIENT_LUA_DEBUG_SYNC) == 0;
    if (ldb.forked) {
        pid_t cp = FUNC5();
        if (cp == -1) {
            FUNC0(c,"Fork() failed: can't run EVAL in debugging mode.");
            return 0;
        } else if (cp == 0) {
            /* Child. Let's ignore important signals handled by the parent. */
            struct sigaction act;
            FUNC13(&act.sa_mask);
            act.sa_flags = 0;
            act.sa_handler = SIG_IGN;
            FUNC12(SIGTERM, &act, NULL);
            FUNC12(SIGINT, &act, NULL);

            /* Log the creation of the child and close the listening
             * socket to make sure if the parent crashes a reset is sent
             * to the clients. */
            FUNC11(LL_WARNING,"Redis forked for debugging eval");
        } else {
            /* Parent */
            FUNC4(ldb.children,(void*)(unsigned long)cp);
            FUNC3(c); /* Close the client in the parent side. */
            return 0;
        }
    } else {
        FUNC11(LL_WARNING,
            "Redis synchronous debugging eval session started");
    }

    /* Setup our debugging session. */
    FUNC1(ldb.conn);
    FUNC2(ldb.conn,5000);
    ldb.active = 1;

    /* First argument of EVAL is the script itself. We split it into different
     * lines since this is the way the debugger accesses the source code. */
    sds srcstring = FUNC6(c->argv[1]->ptr);
    size_t srclen = FUNC8(srcstring);
    while(srclen && (srcstring[srclen-1] == '\n' ||
                     srcstring[srclen-1] == '\r'))
    {
        srcstring[--srclen] = '\0';
    }
    FUNC9(srcstring,srclen);
    ldb.src = FUNC10(srcstring,FUNC8(srcstring),"\n",1,&ldb.lines);
    FUNC7(srcstring);
    return 1;
}