
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct job {int dummy; } ;
struct cmd_run_shell_data {char* cmd; int * item; } ;
struct bufferevent {int input; } ;


 int EVBUFFER_DATA (int ) ;
 size_t EVBUFFER_LENGTH (int ) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int cmd_run_shell_print (struct job*,char*) ;
 int cmdq_continue (int *) ;
 char* evbuffer_readline (int ) ;
 int free (char*) ;
 struct cmd_run_shell_data* job_get_data (struct job*) ;
 struct bufferevent* job_get_event (struct job*) ;
 int job_get_status (struct job*) ;
 int memcpy (char*,int ,size_t) ;
 int xasprintf (char**,char*,char*,int) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static void
cmd_run_shell_callback(struct job *job)
{
 struct cmd_run_shell_data *cdata = job_get_data(job);
 struct bufferevent *event = job_get_event(job);
 char *cmd = cdata->cmd, *msg = ((void*)0), *line;
 size_t size;
 int retcode, status;

 do {
  if ((line = evbuffer_readline(event->input)) != ((void*)0)) {
   cmd_run_shell_print(job, line);
   free(line);
  }
 } while (line != ((void*)0));

 size = EVBUFFER_LENGTH(event->input);
 if (size != 0) {
  line = xmalloc(size + 1);
  memcpy(line, EVBUFFER_DATA(event->input), size);
  line[size] = '\0';

  cmd_run_shell_print(job, line);

  free(line);
 }

 status = job_get_status(job);
 if (WIFEXITED(status)) {
  if ((retcode = WEXITSTATUS(status)) != 0)
   xasprintf(&msg, "'%s' returned %d", cmd, retcode);
 } else if (WIFSIGNALED(status)) {
  retcode = WTERMSIG(status);
  xasprintf(&msg, "'%s' terminated by signal %d", cmd, retcode);
 }
 if (msg != ((void*)0))
  cmd_run_shell_print(job, msg);
 free(msg);

 if (cdata->item != ((void*)0))
  cmdq_continue(cdata->item);
}
