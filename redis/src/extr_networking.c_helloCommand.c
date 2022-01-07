
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int argc; long long resp; int id; int authenticated; TYPE_4__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {char* ptr; } ;
struct TYPE_17__ {scalar_t__ masterhost; scalar_t__ sentinel_mode; scalar_t__ cluster_enabled; } ;


 scalar_t__ ACLAuthenticateUser (TYPE_1__*,TYPE_4__*,TYPE_4__*) ;
 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 char* REDIS_VERSION ;
 int addReplyBulkCString (TYPE_1__*,char*) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyErrorFormat (TYPE_1__*,char*,char const*) ;
 int addReplyLoadedModules (TYPE_1__*) ;
 int addReplyLongLong (TYPE_1__*,int) ;
 int addReplyMapLen (TYPE_1__*,int) ;
 scalar_t__ clientSetNameOrReply (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ getLongLongFromObject (TYPE_4__*,long long*) ;
 TYPE_2__ server ;
 int strcasecmp (char const*,char*) ;

void helloCommand(client *c) {
    long long ver;

    if (getLongLongFromObject(c->argv[1],&ver) != C_OK ||
        ver < 2 || ver > 3)
    {
        addReplyError(c,"-NOPROTO unsupported protocol version");
        return;
    }

    for (int j = 2; j < c->argc; j++) {
        int moreargs = (c->argc-1) - j;
        const char *opt = c->argv[j]->ptr;
        if (!strcasecmp(opt,"AUTH") && moreargs >= 2) {
            if (ACLAuthenticateUser(c, c->argv[j+1], c->argv[j+2]) == C_ERR) {
                addReplyError(c,"-WRONGPASS invalid username-password pair");
                return;
            }
            j += 2;
        } else if (!strcasecmp(opt,"SETNAME") && moreargs) {
            if (clientSetNameOrReply(c, c->argv[j+1]) == C_ERR) return;
            j++;
        } else {
            addReplyErrorFormat(c,"Syntax error in HELLO option '%s'",opt);
            return;
        }
    }


    if (!c->authenticated) {
        addReplyError(c,"-NOAUTH HELLO must be called with the client already "
                        "authenticated, otherwise the HELLO AUTH <user> <pass> "
                        "option can be used to authenticate the client and "
                        "select the RESP protocol version at the same time");
        return;
    }


    c->resp = ver;
    addReplyMapLen(c,7);

    addReplyBulkCString(c,"server");
    addReplyBulkCString(c,"redis");

    addReplyBulkCString(c,"version");
    addReplyBulkCString(c,REDIS_VERSION);

    addReplyBulkCString(c,"proto");
    addReplyLongLong(c,3);

    addReplyBulkCString(c,"id");
    addReplyLongLong(c,c->id);

    addReplyBulkCString(c,"mode");
    if (server.sentinel_mode) addReplyBulkCString(c,"sentinel");
    if (server.cluster_enabled) addReplyBulkCString(c,"cluster");
    else addReplyBulkCString(c,"standalone");

    if (!server.sentinel_mode) {
        addReplyBulkCString(c,"role");
        addReplyBulkCString(c,server.masterhost ? "replica" : "master");
    }

    addReplyBulkCString(c,"modules");
    addReplyLoadedModules(c);
}
