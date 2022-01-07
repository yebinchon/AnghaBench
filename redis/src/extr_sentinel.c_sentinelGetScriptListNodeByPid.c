
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ pid; } ;
typedef TYPE_1__ sentinelScriptJob ;
typedef scalar_t__ pid_t ;
struct TYPE_7__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_8__ {int scripts_queue; } ;


 int SENTINEL_SCRIPT_RUNNING ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 TYPE_4__ sentinel ;

listNode *sentinelGetScriptListNodeByPid(pid_t pid) {
    listNode *ln;
    listIter li;

    listRewind(sentinel.scripts_queue,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sentinelScriptJob *sj = ln->value;

        if ((sj->flags & SENTINEL_SCRIPT_RUNNING) && sj->pid == pid)
            return ln;
    }
    return ((void*)0);
}
