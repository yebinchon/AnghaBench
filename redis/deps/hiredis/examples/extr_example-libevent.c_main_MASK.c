#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int /*<<< orphan*/  member_0; } ;
struct event_base {int dummy; } ;
struct TYPE_10__ {struct timeval* timeout; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ redisOptions ;
struct TYPE_11__ {char* errstr; scalar_t__ err; } ;
typedef  TYPE_2__ redisAsyncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  connectCallback ; 
 int /*<<< orphan*/  disconnectCallback ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 struct event_base* FUNC2 () ; 
 int /*<<< orphan*/  getCallback ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*,...) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct event_base*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11 (int argc, char **argv) {
    FUNC9(SIGPIPE, SIG_IGN);
    struct event_base *base = FUNC2();
    redisOptions options = {0};
    FUNC0(&options, "127.0.0.1", 6379);
    struct timeval tv = {0};
    tv.tv_sec = 1;
    options.timeout = &tv;


    redisAsyncContext *c = FUNC5(&options);
    if (c->err) {
        /* Let *c leak for now... */
        FUNC3("Error: %s\n", c->errstr);
        return 1;
    }

    FUNC8(c,base);
    FUNC6(c,connectCallback);
    FUNC7(c,disconnectCallback);
    FUNC4(c, NULL, NULL, "SET key %b", argv[argc-1], FUNC10(argv[argc-1]));
    FUNC4(c, getCallback, (char*)"end-1", "GET key");
    FUNC1(base);
    return 0;
}