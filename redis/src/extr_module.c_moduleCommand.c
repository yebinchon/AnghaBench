
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_12__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_13__ {int ok; } ;


 scalar_t__ C_OK ;




 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*) ;
 int addReplyHelp (TYPE_2__*,char const**) ;
 int addReplyLoadedModules (TYPE_2__*) ;
 int addReplySubcommandSyntaxError (TYPE_2__*) ;
 int errno ;
 scalar_t__ moduleLoad (char*,void**,int) ;
 scalar_t__ moduleUnload (char*) ;
 TYPE_3__ shared ;
 int strcasecmp (char*,char*) ;

void moduleCommand(client *c) {
    char *subcmd = c->argv[1]->ptr;
    if (c->argc == 2 && !strcasecmp(subcmd,"help")) {
        const char *help[] = {
"LIST -- Return a list of loaded modules.",
"LOAD <path> [arg ...] -- Load a module library from <path>.",
"UNLOAD <name> -- Unload a module.",
((void*)0)
        };
        addReplyHelp(c, help);
    } else
    if (!strcasecmp(subcmd,"load") && c->argc >= 3) {
        robj **argv = ((void*)0);
        int argc = 0;

        if (c->argc > 3) {
            argc = c->argc - 3;
            argv = &c->argv[3];
        }

        if (moduleLoad(c->argv[2]->ptr,(void **)argv,argc) == C_OK)
            addReply(c,shared.ok);
        else
            addReplyError(c,
                "Error loading the extension. Please check the server logs.");
    } else if (!strcasecmp(subcmd,"unload") && c->argc == 3) {
        if (moduleUnload(c->argv[2]->ptr) == C_OK)
            addReply(c,shared.ok);
        else {
            char *errmsg;
            switch(errno) {
            case 129:
                errmsg = "no such module with that name";
                break;
            case 130:
                errmsg = "the module exports one or more module-side data "
                         "types, can't unload";
                break;
            case 128:
                errmsg = "the module exports APIs used by other modules. "
                         "Please unload them first and try again";
                break;
            case 131:
                errmsg = "the module has blocked clients. "
                         "Please wait them unblocked and try again";
                break;
            default:
                errmsg = "operation not possible.";
                break;
            }
            addReplyErrorFormat(c,"Error unloading module: %s",errmsg);
        }
    } else if (!strcasecmp(subcmd,"list") && c->argc == 2) {
        addReplyLoadedModules(c);
    } else {
        addReplySubcommandSyntaxError(c);
        return;
    }
}
