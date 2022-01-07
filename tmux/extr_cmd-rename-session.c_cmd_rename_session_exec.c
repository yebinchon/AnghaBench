
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session {char* name; } ;
struct TYPE_2__ {struct session* s; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct client {int dummy; } ;
struct args {int * argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int RB_INSERT (int ,int *,struct session*) ;
 int RB_REMOVE (int ,int *,struct session*) ;
 struct client* cmd_find_client (struct cmdq_item*,int *,int) ;
 int cmdq_error (struct cmdq_item*,char*,char*) ;
 char* format_single (struct cmdq_item*,int ,struct client*,struct session*,int *,int *) ;
 int free (char*) ;
 int notify_session (char*,struct session*) ;
 int server_status_session (struct session*) ;
 int session_check_name (char*) ;
 int * session_find (char*) ;
 int sessions ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static enum cmd_retval
cmd_rename_session_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct client *c = cmd_find_client(item, ((void*)0), 1);
 struct session *s = item->target.s;
 char *newname;

 newname = format_single(item, args->argv[0], c, s, ((void*)0), ((void*)0));
 if (strcmp(newname, s->name) == 0) {
  free(newname);
  return (CMD_RETURN_NORMAL);
 }

 if (!session_check_name(newname)) {
  cmdq_error(item, "bad session name: %s", newname);
  free(newname);
  return (CMD_RETURN_ERROR);
 }
 if (session_find(newname) != ((void*)0)) {
  cmdq_error(item, "duplicate session: %s", newname);
  free(newname);
  return (CMD_RETURN_ERROR);
 }

 RB_REMOVE(sessions, &sessions, s);
 free(s->name);
 s->name = newname;
 RB_INSERT(sessions, &sessions, s);

 server_status_session(s);
 notify_session("session-renamed", s);

 return (CMD_RETURN_NORMAL);
}
