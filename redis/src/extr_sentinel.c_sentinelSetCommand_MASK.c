#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {long long down_after_period; long long failover_timeout; long long parallel_syncs; long long quorum; int /*<<< orphan*/  renamed_commands; int /*<<< orphan*/ * auth_pass; int /*<<< orphan*/ * client_reconfig_script; int /*<<< orphan*/ * notification_script; } ;
typedef  TYPE_1__ sentinelRedisInstance ;
typedef  char* sds ;
struct TYPE_18__ {char* ptr; } ;
typedef  TYPE_2__ robj ;
struct TYPE_19__ {int argc; TYPE_2__** argv; } ;
typedef  TYPE_3__ client ;
struct TYPE_20__ {int /*<<< orphan*/  ok; } ;
struct TYPE_16__ {scalar_t__ deny_scripts_reconfig; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  X_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,long long*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 TYPE_11__ sentinel ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_1__* FUNC14 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*) ; 

void FUNC18(client *c) {
    sentinelRedisInstance *ri;
    int j, changes = 0;
    int badarg = 0; /* Bad argument position for error reporting. */
    char *option;

    if ((ri = FUNC14(c,c->argv[2]))
        == NULL) return;

    /* Process option - value pairs. */
    for (j = 3; j < c->argc; j++) {
        int moreargs = (c->argc-1) - j;
        option = c->argv[j]->ptr;
        long long ll;
        int old_j = j; /* Used to know what to log as an event. */

        if (!FUNC16(option,"down-after-milliseconds") && moreargs > 0) {
            /* down-after-millisecodns <milliseconds> */
            robj *o = c->argv[++j];
            if (FUNC7(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->down_after_period = ll;
            FUNC15(ri);
            changes++;
        } else if (!FUNC16(option,"failover-timeout") && moreargs > 0) {
            /* failover-timeout <milliseconds> */
            robj *o = c->argv[++j];
            if (FUNC7(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->failover_timeout = ll;
            changes++;
        } else if (!FUNC16(option,"parallel-syncs") && moreargs > 0) {
            /* parallel-syncs <milliseconds> */
            robj *o = c->argv[++j];
            if (FUNC7(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->parallel_syncs = ll;
            changes++;
        } else if (!FUNC16(option,"notification-script") && moreargs > 0) {
            /* notification-script <path> */
            char *value = c->argv[++j]->ptr;
            if (sentinel.deny_scripts_reconfig) {
                FUNC2(c,
                    "Reconfiguration of scripts path is denied for "
                    "security reasons. Check the deny-scripts-reconfig "
                    "configuration directive in your Sentinel configuration");
                return;
            }

            if (FUNC17(value) && FUNC0(value,X_OK) == -1) {
                FUNC2(c,
                    "Notification script seems non existing or non executable");
                if (changes) FUNC13();
                return;
            }
            FUNC9(ri->notification_script);
            ri->notification_script = FUNC17(value) ? FUNC11(value) : NULL;
            changes++;
        } else if (!FUNC16(option,"client-reconfig-script") && moreargs > 0) {
            /* client-reconfig-script <path> */
            char *value = c->argv[++j]->ptr;
            if (sentinel.deny_scripts_reconfig) {
                FUNC2(c,
                    "Reconfiguration of scripts path is denied for "
                    "security reasons. Check the deny-scripts-reconfig "
                    "configuration directive in your Sentinel configuration");
                return;
            }

            if (FUNC17(value) && FUNC0(value,X_OK) == -1) {
                FUNC2(c,
                    "Client reconfiguration script seems non existing or "
                    "non executable");
                if (changes) FUNC13();
                return;
            }
            FUNC9(ri->client_reconfig_script);
            ri->client_reconfig_script = FUNC17(value) ? FUNC11(value) : NULL;
            changes++;
        } else if (!FUNC16(option,"auth-pass") && moreargs > 0) {
            /* auth-pass <password> */
            char *value = c->argv[++j]->ptr;
            FUNC9(ri->auth_pass);
            ri->auth_pass = FUNC17(value) ? FUNC11(value) : NULL;
            changes++;
        } else if (!FUNC16(option,"quorum") && moreargs > 0) {
            /* quorum <count> */
            robj *o = c->argv[++j];
            if (FUNC7(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->quorum = ll;
            changes++;
        } else if (!FUNC16(option,"rename-command") && moreargs > 1) {
            /* rename-command <oldname> <newname> */
            sds oldname = c->argv[++j]->ptr;
            sds newname = c->argv[++j]->ptr;

            if ((FUNC10(oldname) == 0) || (FUNC10(newname) == 0)) {
                badarg = FUNC10(newname) ? j-1 : j;
                goto badfmt;
            }

            /* Remove any older renaming for this command. */
            FUNC5(ri->renamed_commands,oldname);

            /* If the target name is the same as the source name there
             * is no need to add an entry mapping to itself. */
            if (!FUNC6(NULL,oldname,newname)) {
                oldname = FUNC8(oldname);
                newname = FUNC8(newname);
                FUNC4(ri->renamed_commands,oldname,newname);
            }
            changes++;
        } else {
            FUNC3(c,"Unknown option or number of arguments for "
                                  "SENTINEL SET '%s'", option);
            if (changes) FUNC13();
            return;
        }

        /* Log the event. */
        int numargs = j-old_j+1;
        switch(numargs) {
        case 2:
            FUNC12(LL_WARNING,"+set",ri,"%@ %s %s",c->argv[old_j]->ptr,
                                                          c->argv[old_j+1]->ptr);
            break;
        case 3:
            FUNC12(LL_WARNING,"+set",ri,"%@ %s %s %s",c->argv[old_j]->ptr,
                                                             c->argv[old_j+1]->ptr,
                                                             c->argv[old_j+2]->ptr);
            break;
        default:
            FUNC12(LL_WARNING,"+set",ri,"%@ %s",c->argv[old_j]->ptr);
            break;
        }
    }

    if (changes) FUNC13();
    FUNC1(c,shared.ok);
    return;

badfmt: /* Bad format errors */
    if (changes) FUNC13();
    FUNC3(c,"Invalid argument '%s' for SENTINEL SET '%s'",
        (char*)c->argv[badarg]->ptr,option);
}