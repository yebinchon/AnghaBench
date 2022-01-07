
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ start_time; scalar_t__ pid; int * argv; } ;
typedef TYPE_1__ sentinelScriptJob ;
typedef scalar_t__ mstime_t ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_7__ {int scripts_queue; } ;


 int LL_WARNING ;
 scalar_t__ SENTINEL_SCRIPT_MAX_RUNTIME ;
 int SENTINEL_SCRIPT_RUNNING ;
 int SIGKILL ;
 int kill (scalar_t__,int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ mstime () ;
 TYPE_3__ sentinel ;
 int sentinelEvent (int ,char*,int *,char*,int ,long) ;

void sentinelKillTimedoutScripts(void) {
    listNode *ln;
    listIter li;
    mstime_t now = mstime();

    listRewind(sentinel.scripts_queue,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sentinelScriptJob *sj = ln->value;

        if (sj->flags & SENTINEL_SCRIPT_RUNNING &&
            (now - sj->start_time) > SENTINEL_SCRIPT_MAX_RUNTIME)
        {
            sentinelEvent(LL_WARNING,"-script-timeout",((void*)0),"%s %ld",
                sj->argv[0], (long)sj->pid);
            kill(sj->pid,SIGKILL);
        }
    }
}
