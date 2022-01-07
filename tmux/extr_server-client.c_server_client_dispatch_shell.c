
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int peer; } ;


 int MSG_SHELL ;
 char* _PATH_BSHELL ;
 scalar_t__ areshell (char const*) ;
 int global_s_options ;
 char* options_get_string (int ,char*) ;
 int proc_kill_peer (int ) ;
 int proc_send (int ,int ,int,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
server_client_dispatch_shell(struct client *c)
{
 const char *shell;

 shell = options_get_string(global_s_options, "default-shell");
 if (*shell == '\0' || areshell(shell))
  shell = _PATH_BSHELL;
 proc_send(c->peer, MSG_SHELL, -1, shell, strlen(shell) + 1);

 proc_kill_peer(c->peer);
}
