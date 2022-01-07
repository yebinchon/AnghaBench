
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ retry_num; long* argv; scalar_t__ start_time; scalar_t__ pid; int flags; } ;
typedef TYPE_1__ sentinelScriptJob ;
typedef scalar_t__ pid_t ;
struct TYPE_8__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
struct TYPE_9__ {int running_scripts; int scripts_queue; } ;


 int LL_DEBUG ;
 int LL_WARNING ;
 scalar_t__ SENTINEL_SCRIPT_MAX_RETRY ;
 int SENTINEL_SCRIPT_RUNNING ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int listDelNode (int ,TYPE_2__*) ;
 scalar_t__ mstime () ;
 TYPE_5__ sentinel ;
 int sentinelEvent (int ,char*,int *,char*,long,int,int) ;
 TYPE_2__* sentinelGetScriptListNodeByPid (scalar_t__) ;
 int sentinelReleaseScriptJob (TYPE_1__*) ;
 scalar_t__ sentinelScriptRetryDelay (scalar_t__) ;
 int serverLog (int ,char*,long) ;
 scalar_t__ wait3 (int*,int ,int *) ;

void sentinelCollectTerminatedScripts(void) {
    int statloc;
    pid_t pid;

    while ((pid = wait3(&statloc,WNOHANG,((void*)0))) > 0) {
        int exitcode = WEXITSTATUS(statloc);
        int bysignal = 0;
        listNode *ln;
        sentinelScriptJob *sj;

        if (WIFSIGNALED(statloc)) bysignal = WTERMSIG(statloc);
        sentinelEvent(LL_DEBUG,"-script-child",((void*)0),"%ld %d %d",
            (long)pid, exitcode, bysignal);

        ln = sentinelGetScriptListNodeByPid(pid);
        if (ln == ((void*)0)) {
            serverLog(LL_WARNING,"wait3() returned a pid (%ld) we can't find in our scripts execution queue!", (long)pid);
            continue;
        }
        sj = ln->value;




        if ((bysignal || exitcode == 1) &&
            sj->retry_num != SENTINEL_SCRIPT_MAX_RETRY)
        {
            sj->flags &= ~SENTINEL_SCRIPT_RUNNING;
            sj->pid = 0;
            sj->start_time = mstime() +
                             sentinelScriptRetryDelay(sj->retry_num);
        } else {


            if (bysignal || exitcode != 0) {
                sentinelEvent(LL_WARNING,"-script-error",((void*)0),
                              "%s %d %d", sj->argv[0], bysignal, exitcode);
            }
            listDelNode(sentinel.scripts_queue,ln);
            sentinelReleaseScriptJob(sj);
            sentinel.running_scripts--;
        }
    }
}
