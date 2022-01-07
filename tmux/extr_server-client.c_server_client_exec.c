
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int options; } ;
struct client {int peer; struct session* session; } ;


 int MSG_EXEC ;
 int free (char*) ;
 int global_s_options ;
 int memcpy (char*,char const*,size_t) ;
 char* options_get_string (int ,char*) ;
 int proc_send (int ,int ,int,char*,size_t) ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

void
server_client_exec(struct client *c, const char *cmd)
{
 struct session *s = c->session;
 char *msg;
 const char *shell;
 size_t cmdsize, shellsize;

 if (*cmd == '\0')
  return;
 cmdsize = strlen(cmd) + 1;

 if (s != ((void*)0))
  shell = options_get_string(s->options, "default-shell");
 else
  shell = options_get_string(global_s_options, "default-shell");
 shellsize = strlen(shell) + 1;

 msg = xmalloc(cmdsize + shellsize);
 memcpy(msg, cmd, cmdsize);
 memcpy(msg + cmdsize, shell, shellsize);

 proc_send(c->peer, MSG_EXEC, -1, msg, cmdsize + shellsize);
 free(msg);
}
