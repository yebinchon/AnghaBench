
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rdbSaveInfo ;
typedef int client ;
struct TYPE_4__ {int rdb_child_pid; int rdb_filename; } ;
struct TYPE_3__ {int err; int ok; } ;


 scalar_t__ C_OK ;
 int addReply (int *,int ) ;
 int addReplyError (int *,char*) ;
 int * rdbPopulateSaveInfo (int *) ;
 scalar_t__ rdbSave (int ,int *) ;
 TYPE_2__ server ;
 TYPE_1__ shared ;

void saveCommand(client *c) {
    if (server.rdb_child_pid != -1) {
        addReplyError(c,"Background save already in progress");
        return;
    }
    rdbSaveInfo rsi, *rsiptr;
    rsiptr = rdbPopulateSaveInfo(&rsi);
    if (rdbSave(server.rdb_filename,rsiptr) == C_OK) {
        addReply(c,shared.ok);
    } else {
        addReply(c,shared.err);
    }
}
