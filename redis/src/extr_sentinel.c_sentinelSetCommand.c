
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct TYPE_17__ {long long down_after_period; long long failover_timeout; long long parallel_syncs; long long quorum; int renamed_commands; int * auth_pass; int * client_reconfig_script; int * notification_script; } ;
typedef TYPE_1__ sentinelRedisInstance ;
typedef char* sds ;
struct TYPE_18__ {char* ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_19__ {int argc; TYPE_2__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_20__ {int ok; } ;
struct TYPE_16__ {scalar_t__ deny_scripts_reconfig; } ;


 scalar_t__ C_ERR ;
 int LL_WARNING ;
 int X_OK ;
 int access (char*,int ) ;
 int addReply (TYPE_3__*,int ) ;
 int addReplyError (TYPE_3__*,char*) ;
 int addReplyErrorFormat (TYPE_3__*,char*,char*,...) ;
 int dictAdd (int ,char*,char*) ;
 int dictDelete (int ,char*) ;
 int dictSdsKeyCaseCompare (int *,char*,char*) ;
 scalar_t__ getLongLongFromObject (TYPE_2__*,long long*) ;
 char* sdsdup (char*) ;
 int sdsfree (int *) ;
 scalar_t__ sdslen (char*) ;
 int * sdsnew (char*) ;
 TYPE_11__ sentinel ;
 int sentinelEvent (int ,char*,TYPE_1__*,char*,char*,...) ;
 int sentinelFlushConfig () ;
 TYPE_1__* sentinelGetMasterByNameOrReplyError (TYPE_3__*,TYPE_2__*) ;
 int sentinelPropagateDownAfterPeriod (TYPE_1__*) ;
 TYPE_4__ shared ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

void sentinelSetCommand(client *c) {
    sentinelRedisInstance *ri;
    int j, changes = 0;
    int badarg = 0;
    char *option;

    if ((ri = sentinelGetMasterByNameOrReplyError(c,c->argv[2]))
        == ((void*)0)) return;


    for (j = 3; j < c->argc; j++) {
        int moreargs = (c->argc-1) - j;
        option = c->argv[j]->ptr;
        long long ll;
        int old_j = j;

        if (!strcasecmp(option,"down-after-milliseconds") && moreargs > 0) {

            robj *o = c->argv[++j];
            if (getLongLongFromObject(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->down_after_period = ll;
            sentinelPropagateDownAfterPeriod(ri);
            changes++;
        } else if (!strcasecmp(option,"failover-timeout") && moreargs > 0) {

            robj *o = c->argv[++j];
            if (getLongLongFromObject(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->failover_timeout = ll;
            changes++;
        } else if (!strcasecmp(option,"parallel-syncs") && moreargs > 0) {

            robj *o = c->argv[++j];
            if (getLongLongFromObject(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->parallel_syncs = ll;
            changes++;
        } else if (!strcasecmp(option,"notification-script") && moreargs > 0) {

            char *value = c->argv[++j]->ptr;
            if (sentinel.deny_scripts_reconfig) {
                addReplyError(c,
                    "Reconfiguration of scripts path is denied for "
                    "security reasons. Check the deny-scripts-reconfig "
                    "configuration directive in your Sentinel configuration");
                return;
            }

            if (strlen(value) && access(value,X_OK) == -1) {
                addReplyError(c,
                    "Notification script seems non existing or non executable");
                if (changes) sentinelFlushConfig();
                return;
            }
            sdsfree(ri->notification_script);
            ri->notification_script = strlen(value) ? sdsnew(value) : ((void*)0);
            changes++;
        } else if (!strcasecmp(option,"client-reconfig-script") && moreargs > 0) {

            char *value = c->argv[++j]->ptr;
            if (sentinel.deny_scripts_reconfig) {
                addReplyError(c,
                    "Reconfiguration of scripts path is denied for "
                    "security reasons. Check the deny-scripts-reconfig "
                    "configuration directive in your Sentinel configuration");
                return;
            }

            if (strlen(value) && access(value,X_OK) == -1) {
                addReplyError(c,
                    "Client reconfiguration script seems non existing or "
                    "non executable");
                if (changes) sentinelFlushConfig();
                return;
            }
            sdsfree(ri->client_reconfig_script);
            ri->client_reconfig_script = strlen(value) ? sdsnew(value) : ((void*)0);
            changes++;
        } else if (!strcasecmp(option,"auth-pass") && moreargs > 0) {

            char *value = c->argv[++j]->ptr;
            sdsfree(ri->auth_pass);
            ri->auth_pass = strlen(value) ? sdsnew(value) : ((void*)0);
            changes++;
        } else if (!strcasecmp(option,"quorum") && moreargs > 0) {

            robj *o = c->argv[++j];
            if (getLongLongFromObject(o,&ll) == C_ERR || ll <= 0) {
                badarg = j;
                goto badfmt;
            }
            ri->quorum = ll;
            changes++;
        } else if (!strcasecmp(option,"rename-command") && moreargs > 1) {

            sds oldname = c->argv[++j]->ptr;
            sds newname = c->argv[++j]->ptr;

            if ((sdslen(oldname) == 0) || (sdslen(newname) == 0)) {
                badarg = sdslen(newname) ? j-1 : j;
                goto badfmt;
            }


            dictDelete(ri->renamed_commands,oldname);



            if (!dictSdsKeyCaseCompare(((void*)0),oldname,newname)) {
                oldname = sdsdup(oldname);
                newname = sdsdup(newname);
                dictAdd(ri->renamed_commands,oldname,newname);
            }
            changes++;
        } else {
            addReplyErrorFormat(c,"Unknown option or number of arguments for "
                                  "SENTINEL SET '%s'", option);
            if (changes) sentinelFlushConfig();
            return;
        }


        int numargs = j-old_j+1;
        switch(numargs) {
        case 2:
            sentinelEvent(LL_WARNING,"+set",ri,"%@ %s %s",c->argv[old_j]->ptr,
                                                          c->argv[old_j+1]->ptr);
            break;
        case 3:
            sentinelEvent(LL_WARNING,"+set",ri,"%@ %s %s %s",c->argv[old_j]->ptr,
                                                             c->argv[old_j+1]->ptr,
                                                             c->argv[old_j+2]->ptr);
            break;
        default:
            sentinelEvent(LL_WARNING,"+set",ri,"%@ %s",c->argv[old_j]->ptr);
            break;
        }
    }

    if (changes) sentinelFlushConfig();
    addReply(c,shared.ok);
    return;

badfmt:
    if (changes) sentinelFlushConfig();
    addReplyErrorFormat(c,"Invalid argument '%s' for SENTINEL SET '%s'",
        (char*)c->argv[badarg]->ptr,option);
}
