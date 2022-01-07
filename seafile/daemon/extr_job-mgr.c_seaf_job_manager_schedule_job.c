
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* data; int done_func; int thread_func; TYPE_1__* manager; scalar_t__ id; } ;
struct TYPE_7__ {int next_job_id; } ;
typedef TYPE_1__ SeafJobManager ;
typedef TYPE_2__ SeafJob ;
typedef int JobThreadFunc ;
typedef int JobDoneCallback ;


 scalar_t__ job_thread_create (TYPE_2__*) ;
 int seaf_job_free (TYPE_2__*) ;
 TYPE_2__* seaf_job_new () ;

int
seaf_job_manager_schedule_job (SeafJobManager *mgr,
                               JobThreadFunc func,
                               JobDoneCallback done_func,
                               void *data)
{
    SeafJob *job = seaf_job_new ();
    job->id = mgr->next_job_id++;
    job->manager = mgr;
    job->thread_func = func;
    job->done_func = done_func;
    job->data = data;

    if (job_thread_create (job) < 0) {
        seaf_job_free (job);
        return -1;
    }

    return 0;
}
