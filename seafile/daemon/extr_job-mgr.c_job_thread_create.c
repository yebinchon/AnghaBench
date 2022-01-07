
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * pipefd; TYPE_1__* manager; } ;
struct TYPE_8__ {int ev_base; } ;
struct TYPE_7__ {int thread_pool; TYPE_2__* session; } ;
typedef TYPE_2__ SeafileSession ;
typedef TYPE_3__ SeafJob ;


 int EV_READ ;
 int errno ;
 int event_base_once (int ,int ,int ,int ,TYPE_3__*,int *) ;
 int g_thread_pool_push (int ,TYPE_3__*,int *) ;
 int job_done_cb ;
 scalar_t__ seaf_pipe (int *) ;
 int seaf_warning (char*,int ) ;
 int strerror (int ) ;

int
job_thread_create (SeafJob *job)
{
    SeafileSession *session = job->manager->session;

    if (seaf_pipe (job->pipefd) < 0) {
        seaf_warning ("[Job Manager] pipe error: %s\n", strerror(errno));
        return -1;
    }

    g_thread_pool_push (job->manager->thread_pool, job, ((void*)0));

    event_base_once (session->ev_base, job->pipefd[0], EV_READ, job_done_cb, job, ((void*)0));

    return 0;
}
