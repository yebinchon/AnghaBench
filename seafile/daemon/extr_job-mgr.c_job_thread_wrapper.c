
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pipefd; int data; int (* thread_func ) (int ) ;int result; } ;
typedef TYPE_1__ SeafJob ;


 int errno ;
 int seaf_pipe_writen (int ,char*,int) ;
 int seaf_warning (char*,int ) ;
 int strerror (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
job_thread_wrapper (void *vdata, void *unused)
{
    SeafJob *job = vdata;

    job->result = job->thread_func (job->data);
    if (seaf_pipe_writen (job->pipefd[1], "a", 1) != 1) {
        seaf_warning ("[Job Manager] write to pipe error: %s\n", strerror(errno));
    }
}
