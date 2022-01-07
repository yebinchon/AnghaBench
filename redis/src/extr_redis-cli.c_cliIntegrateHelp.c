
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct commandHelp {char* summary; char* since; scalar_t__ group; void* params; int name; } ;
typedef int sds ;
struct TYPE_8__ {scalar_t__ type; size_t elements; char* str; int integer; struct TYPE_8__** element; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_9__ {int argc; struct commandHelp* org; int * argv; int type; int full; } ;
typedef TYPE_2__ helpEntry ;


 int CC_QUIET ;
 int CLI_HELP_COMMAND ;
 scalar_t__ REDIS_ERR ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 scalar_t__ REDIS_REPLY_STRING ;
 scalar_t__ cliConnect (int ) ;
 int context ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_2__* helpEntries ;
 int helpEntriesLen ;
 int llabs (int) ;
 TYPE_1__* redisCommand (int ,char*) ;
 void* sdscat (void*,char*) ;
 void* sdsempty () ;
 int sdsnew (char*) ;
 int sdstoupper (int ) ;
 int strcasecmp (int ,char*) ;
 void* zmalloc (int) ;
 TYPE_2__* zrealloc (TYPE_2__*,int) ;

__attribute__((used)) static void cliIntegrateHelp(void) {
    if (cliConnect(CC_QUIET) == REDIS_ERR) return;

    redisReply *reply = redisCommand(context, "COMMAND");
    if(reply == ((void*)0) || reply->type != REDIS_REPLY_ARRAY) return;



    for (size_t j = 0; j < reply->elements; j++) {
        redisReply *entry = reply->element[j];
        if (entry->type != REDIS_REPLY_ARRAY || entry->elements < 4 ||
            entry->element[0]->type != REDIS_REPLY_STRING ||
            entry->element[1]->type != REDIS_REPLY_INTEGER ||
            entry->element[3]->type != REDIS_REPLY_INTEGER) return;
        char *cmdname = entry->element[0]->str;
        int i;

        for (i = 0; i < helpEntriesLen; i++) {
            helpEntry *he = helpEntries+i;
            if (!strcasecmp(he->argv[0],cmdname))
                break;
        }
        if (i != helpEntriesLen) continue;

        helpEntriesLen++;
        helpEntries = zrealloc(helpEntries,sizeof(helpEntry)*helpEntriesLen);
        helpEntry *new = helpEntries+(helpEntriesLen-1);

        new->argc = 1;
        new->argv = zmalloc(sizeof(sds));
        new->argv[0] = sdsnew(cmdname);
        new->full = new->argv[0];
        new->type = CLI_HELP_COMMAND;
        sdstoupper(new->argv[0]);

        struct commandHelp *ch = zmalloc(sizeof(*ch));
        ch->name = new->argv[0];
        ch->params = sdsempty();
        int args = llabs(entry->element[1]->integer);
        args--;
        if (entry->element[3]->integer == 1) {
            ch->params = sdscat(ch->params,"key ");
            args--;
        }
        while(args-- > 0) ch->params = sdscat(ch->params,"arg ");
        if (entry->element[1]->integer < 0)
            ch->params = sdscat(ch->params,"...options...");
        ch->summary = "Help not available";
        ch->group = 0;
        ch->since = "not known";
        new->org = ch;
    }
    freeReplyObject(reply);
}
