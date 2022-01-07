
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int robj ;
struct TYPE_10__ {int argc; int * argv; TYPE_2__* cmd; } ;
typedef TYPE_3__ multiCmd ;
struct TYPE_8__ {int count; int cmd_flags; TYPE_3__* commands; } ;
struct TYPE_11__ {int argc; TYPE_2__* cmd; TYPE_1__ mstate; int argv; } ;
typedef TYPE_4__ client ;
struct TYPE_9__ {int flags; } ;


 int incrRefCount (int ) ;
 int memcpy (int *,int ,int) ;
 int * zmalloc (int) ;
 TYPE_3__* zrealloc (TYPE_3__*,int) ;

void queueMultiCommand(client *c) {
    multiCmd *mc;
    int j;

    c->mstate.commands = zrealloc(c->mstate.commands,
            sizeof(multiCmd)*(c->mstate.count+1));
    mc = c->mstate.commands+c->mstate.count;
    mc->cmd = c->cmd;
    mc->argc = c->argc;
    mc->argv = zmalloc(sizeof(robj*)*c->argc);
    memcpy(mc->argv,c->argv,sizeof(robj*)*c->argc);
    for (j = 0; j < c->argc; j++)
        incrRefCount(mc->argv[j]);
    c->mstate.count++;
    c->mstate.cmd_flags |= c->cmd->flags;
}
