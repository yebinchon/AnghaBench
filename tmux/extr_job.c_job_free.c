
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {int pid; int fd; int * event; int * data; int (* freecb ) (int *) ;struct job* cmd; } ;


 int LIST_REMOVE (struct job*,int ) ;
 int SIGTERM ;
 int bufferevent_free (int *) ;
 int close (int) ;
 int entry ;
 int free (struct job*) ;
 int kill (int,int ) ;
 int log_debug (char*,struct job*,struct job*) ;
 int stub1 (int *) ;

void
job_free(struct job *job)
{
 log_debug("free job %p: %s", job, job->cmd);

 LIST_REMOVE(job, entry);
 free(job->cmd);

 if (job->freecb != ((void*)0) && job->data != ((void*)0))
  job->freecb(job->data);

 if (job->pid != -1)
  kill(job->pid, SIGTERM);
 if (job->event != ((void*)0))
  bufferevent_free(job->event);
 if (job->fd != -1)
  close(job->fd);

 free(job);
}
