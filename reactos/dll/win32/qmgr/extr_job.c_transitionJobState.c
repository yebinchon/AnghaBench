
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cs; } ;
struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ BackgroundCopyJobImpl ;
typedef int BOOL ;
typedef scalar_t__ BG_JOB_STATE ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 int LeaveCriticalSection (int *) ;
 int TRUE ;
 TYPE_3__ globalMgr ;

BOOL transitionJobState(BackgroundCopyJobImpl *job, BG_JOB_STATE from, BG_JOB_STATE to)
{
    BOOL ret = FALSE;

    EnterCriticalSection(&globalMgr.cs);
    if (job->state == from)
    {
        job->state = to;
        ret = TRUE;
    }
    LeaveCriticalSection(&globalMgr.cs);
    return ret;
}
