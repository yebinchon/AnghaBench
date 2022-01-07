
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__ start_time; int pid; int * argv; int retry_num; } ;
typedef TYPE_1__ sentinelScriptJob ;
typedef int pid_t ;
typedef scalar_t__ mstime_t ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_7__ {scalar_t__ running_scripts; int scripts_queue; } ;


 int LL_DEBUG ;
 int LL_WARNING ;
 scalar_t__ SENTINEL_SCRIPT_MAX_RUNNING ;
 int SENTINEL_SCRIPT_RUNNING ;
 int _exit (int) ;
 int environ ;
 int execve (int ,int *,int ) ;
 int fork () ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ mstime () ;
 TYPE_3__ sentinel ;
 int sentinelEvent (int ,char*,int *,char*,long,...) ;

void sentinelRunPendingScripts(void) {
    listNode *ln;
    listIter li;
    mstime_t now = mstime();



    listRewind(sentinel.scripts_queue,&li);
    while (sentinel.running_scripts < SENTINEL_SCRIPT_MAX_RUNNING &&
           (ln = listNext(&li)) != ((void*)0))
    {
        sentinelScriptJob *sj = ln->value;
        pid_t pid;


        if (sj->flags & SENTINEL_SCRIPT_RUNNING) continue;


        if (sj->start_time && sj->start_time > now) continue;

        sj->flags |= SENTINEL_SCRIPT_RUNNING;
        sj->start_time = mstime();
        sj->retry_num++;
        pid = fork();

        if (pid == -1) {



            sentinelEvent(LL_WARNING,"-script-error",((void*)0),
                          "%s %d %d", sj->argv[0], 99, 0);
            sj->flags &= ~SENTINEL_SCRIPT_RUNNING;
            sj->pid = 0;
        } else if (pid == 0) {

            execve(sj->argv[0],sj->argv,environ);

            _exit(2);
        } else {
            sentinel.running_scripts++;
            sj->pid = pid;
            sentinelEvent(LL_DEBUG,"+script-child",((void*)0),"%ld",(long)pid);
        }
    }
}
