#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int argc; long long resp; int id; int /*<<< orphan*/  authenticated; TYPE_4__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {char* ptr; } ;
struct TYPE_17__ {scalar_t__ masterhost; scalar_t__ sentinel_mode; scalar_t__ cluster_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 char* REDIS_VERSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,long long*) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

void FUNC10(client *c) {
    long long ver;

    if (FUNC8(c->argv[1],&ver) != C_OK ||
        ver < 2 || ver > 3)
    {
        FUNC2(c,"-NOPROTO unsupported protocol version");
        return;
    }

    for (int j = 2; j < c->argc; j++) {
        int moreargs = (c->argc-1) - j;
        const char *opt = c->argv[j]->ptr;
        if (!FUNC9(opt,"AUTH") && moreargs >= 2) {
            if (FUNC0(c, c->argv[j+1], c->argv[j+2]) == C_ERR) {
                FUNC2(c,"-WRONGPASS invalid username-password pair");
                return;
            }
            j += 2;
        } else if (!FUNC9(opt,"SETNAME") && moreargs) {
            if (FUNC7(c, c->argv[j+1]) == C_ERR) return;
            j++;
        } else {
            FUNC3(c,"Syntax error in HELLO option '%s'",opt);
            return;
        }
    }

    /* At this point we need to be authenticated to continue. */
    if (!c->authenticated) {
        FUNC2(c,"-NOAUTH HELLO must be called with the client already "
                        "authenticated, otherwise the HELLO AUTH <user> <pass> "
                        "option can be used to authenticate the client and "
                        "select the RESP protocol version at the same time");
        return;
    }

    /* Let's switch to the specified RESP mode. */
    c->resp = ver;
    FUNC6(c,7);

    FUNC1(c,"server");
    FUNC1(c,"redis");

    FUNC1(c,"version");
    FUNC1(c,REDIS_VERSION);

    FUNC1(c,"proto");
    FUNC5(c,3);

    FUNC1(c,"id");
    FUNC5(c,c->id);

    FUNC1(c,"mode");
    if (server.sentinel_mode) FUNC1(c,"sentinel");
    if (server.cluster_enabled) FUNC1(c,"cluster");
    else FUNC1(c,"standalone");

    if (!server.sentinel_mode) {
        FUNC1(c,"role");
        FUNC1(c,server.masterhost ? "replica" : "master");
    }

    FUNC1(c,"modules");
    FUNC4(c);
}