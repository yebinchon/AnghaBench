
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int rdbSaveInfo ;
struct TYPE_10__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_12__ {int rdb_child_pid; int rdb_bgsave_scheduled; int rdb_filename; } ;
struct TYPE_11__ {int err; int syntaxerr; } ;
struct TYPE_9__ {int ptr; } ;


 scalar_t__ C_OK ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyStatus (TYPE_2__*,char*) ;
 scalar_t__ hasActiveChildProcess () ;
 int * rdbPopulateSaveInfo (int *) ;
 scalar_t__ rdbSaveBackground (int ,int *) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int strcasecmp (int ,char*) ;

void bgsaveCommand(client *c) {
    int schedule = 0;



    if (c->argc > 1) {
        if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"schedule")) {
            schedule = 1;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }

    rdbSaveInfo rsi, *rsiptr;
    rsiptr = rdbPopulateSaveInfo(&rsi);

    if (server.rdb_child_pid != -1) {
        addReplyError(c,"Background save already in progress");
    } else if (hasActiveChildProcess()) {
        if (schedule) {
            server.rdb_bgsave_scheduled = 1;
            addReplyStatus(c,"Background saving scheduled");
        } else {
            addReplyError(c,
            "Another child process is active (AOF?): can't BGSAVE right now. "
            "Use BGSAVE SCHEDULE in order to schedule a BGSAVE whenever "
            "possible.");
        }
    } else if (rdbSaveBackground(server.rdb_filename,rsiptr) == C_OK) {
        addReplyStatus(c,"Background saving started");
    } else {
        addReply(c,shared.err);
    }
}
