
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct moduleLoadQueueEntry {int path; int argc; scalar_t__ argv; } ;
struct TYPE_4__ {struct moduleLoadQueueEntry* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_5__ {int loadmodule_queue; } ;


 scalar_t__ C_ERR ;
 int LL_WARNING ;
 int exit (int) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ moduleLoad (int ,void**,int ) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,int ) ;

void moduleLoadFromQueue(void) {
    listIter li;
    listNode *ln;

    listRewind(server.loadmodule_queue,&li);
    while((ln = listNext(&li))) {
        struct moduleLoadQueueEntry *loadmod = ln->value;
        if (moduleLoad(loadmod->path,(void **)loadmod->argv,loadmod->argc)
            == C_ERR)
        {
            serverLog(LL_WARNING,
                "Can't load module from %s: server aborting",
                loadmod->path);
            exit(1);
        }
    }
}
