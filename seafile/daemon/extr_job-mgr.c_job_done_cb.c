
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int evutil_socket_t ;
struct TYPE_3__ {int result; int (* done_func ) (int ) ;int * pipefd; } ;
typedef TYPE_1__ SeafJob ;


 int errno ;
 int seaf_job_free (TYPE_1__*) ;
 int seaf_pipe_close (int ) ;
 int seaf_pipe_readn (int ,char*,int) ;
 int seaf_warning (char*,int ) ;
 int strerror (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
job_done_cb (evutil_socket_t fd, short event, void *vdata)
{
    SeafJob *job = vdata;
    char buf[1];

    if (seaf_pipe_readn (job->pipefd[0], buf, 1) != 1) {
        seaf_warning ("[Job Manager] read pipe error: %s\n", strerror(errno));
    }
    seaf_pipe_close (job->pipefd[0]);
    seaf_pipe_close (job->pipefd[1]);
    if (job->done_func) {
        job->done_func (job->result);
    }

    seaf_job_free (job);
}
