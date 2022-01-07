
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char** argv; int flags; scalar_t__ pid; scalar_t__ start_time; scalar_t__ retry_num; } ;
typedef TYPE_1__ sentinelScriptJob ;
typedef scalar_t__ mstime_t ;
struct TYPE_6__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
typedef int client ;
struct TYPE_7__ {int scripts_queue; } ;


 int SENTINEL_SCRIPT_RUNNING ;
 int addReplyArrayLen (int *,int) ;
 int addReplyBulkCString (int *,char*) ;
 int addReplyBulkLongLong (int *,scalar_t__) ;
 int addReplyMapLen (int *,int) ;
 int listLength (int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 scalar_t__ mstime () ;
 TYPE_3__ sentinel ;

void sentinelPendingScriptsCommand(client *c) {
    listNode *ln;
    listIter li;

    addReplyArrayLen(c,listLength(sentinel.scripts_queue));
    listRewind(sentinel.scripts_queue,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        sentinelScriptJob *sj = ln->value;
        int j = 0;

        addReplyMapLen(c,5);

        addReplyBulkCString(c,"argv");
        while (sj->argv[j]) j++;
        addReplyArrayLen(c,j);
        j = 0;
        while (sj->argv[j]) addReplyBulkCString(c,sj->argv[j++]);

        addReplyBulkCString(c,"flags");
        addReplyBulkCString(c,
            (sj->flags & SENTINEL_SCRIPT_RUNNING) ? "running" : "scheduled");

        addReplyBulkCString(c,"pid");
        addReplyBulkLongLong(c,sj->pid);

        if (sj->flags & SENTINEL_SCRIPT_RUNNING) {
            addReplyBulkCString(c,"run-time");
            addReplyBulkLongLong(c,mstime() - sj->start_time);
        } else {
            mstime_t delay = sj->start_time ? (sj->start_time-mstime()) : 0;
            if (delay < 0) delay = 0;
            addReplyBulkCString(c,"run-delay");
            addReplyBulkLongLong(c,delay);
        }

        addReplyBulkCString(c,"retry-num");
        addReplyBulkLongLong(c,sj->retry_num);
    }
}
