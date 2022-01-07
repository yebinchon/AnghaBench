
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_16__ {int * configfile; scalar_t__ loading; } ;
struct TYPE_15__ {int ok; } ;
struct TYPE_13__ {int ptr; } ;


 int LL_WARNING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyErrorFormat (TYPE_2__*,char*,int ) ;
 int addReplyHelp (TYPE_2__*,char const**) ;
 int addReplySubcommandSyntaxError (TYPE_2__*) ;
 int configGetCommand (TYPE_2__*) ;
 int configSetCommand (TYPE_2__*) ;
 int errno ;
 int resetCommandTableStats () ;
 int resetServerStats () ;
 int rewriteConfig (int *) ;
 TYPE_4__ server ;
 int serverLog (int ,char*,...) ;
 TYPE_3__ shared ;
 scalar_t__ strcasecmp (int ,char*) ;
 int strerror (int ) ;

void configCommand(client *c) {

    if (server.loading && strcasecmp(c->argv[1]->ptr,"get")) {
        addReplyError(c,"Only CONFIG GET is allowed during loading");
        return;
    }

    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"GET <pattern> -- Return parameters matching the glob-like <pattern> and their values.",
"SET <parameter> <value> -- Set parameter to value.",
"RESETSTAT -- Reset statistics reported by INFO.",
"REWRITE -- Rewrite the configuration file.",
((void*)0)
        };
        addReplyHelp(c, help);
    } else if (!strcasecmp(c->argv[1]->ptr,"set") && c->argc == 4) {
        configSetCommand(c);
    } else if (!strcasecmp(c->argv[1]->ptr,"get") && c->argc == 3) {
        configGetCommand(c);
    } else if (!strcasecmp(c->argv[1]->ptr,"resetstat") && c->argc == 2) {
        resetServerStats();
        resetCommandTableStats();
        addReply(c,shared.ok);
    } else if (!strcasecmp(c->argv[1]->ptr,"rewrite") && c->argc == 2) {
        if (server.configfile == ((void*)0)) {
            addReplyError(c,"The server is running without a config file");
            return;
        }
        if (rewriteConfig(server.configfile) == -1) {
            serverLog(LL_WARNING,"CONFIG REWRITE failed: %s", strerror(errno));
            addReplyErrorFormat(c,"Rewriting config file: %s", strerror(errno));
        } else {
            serverLog(LL_WARNING,"CONFIG REWRITE executed with success.");
            addReply(c,shared.ok);
        }
    } else {
        addReplySubcommandSyntaxError(c);
        return;
    }
}
