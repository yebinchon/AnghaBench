
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {int dummy; } ;
struct session {int dummy; } ;
struct job {int dummy; } ;


 int JOB_NOWAIT ;
 int bufferevent_write (int ,void*,size_t) ;
 int job_get_event (struct job*) ;
 struct job* job_run (char const*,struct session*,int *,int *,int *,int *,int *,int ) ;
 int window_copy_copy_buffer (struct window_mode_entry*,char const*,void*,size_t) ;
 void* window_copy_get_selection (struct window_mode_entry*,size_t*) ;

__attribute__((used)) static void
window_copy_copy_pipe(struct window_mode_entry *wme, struct session *s,
    const char *prefix, const char *command)
{
 void *buf;
 size_t len;
 struct job *job;

 buf = window_copy_get_selection(wme, &len);
 if (buf == ((void*)0))
  return;

 job = job_run(command, s, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), JOB_NOWAIT);
 bufferevent_write(job_get_event(job), buf, len);
 window_copy_copy_buffer(wme, prefix, buf, len);
}
