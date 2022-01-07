
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msg_command_data {int argc; } ;
struct TYPE_2__ {int len; } ;
struct imsg {TYPE_1__ hdr; scalar_t__ data; } ;
struct cmd_parse_result {int status; char* error; int cmdlist; } ;
struct client {int flags; } ;


 int CLIENT_EXIT ;



 int IMSG_HEADER_SIZE ;
 int cmd_free_argv (int,char**) ;
 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_arguments (int,char**,int *) ;
 scalar_t__ cmd_unpack_argv (char*,size_t,int,char***) ;
 int cmdq_append (struct client*,int ) ;
 int cmdq_get_callback (int ,int *) ;
 int cmdq_get_command (int ,int *,int *,int ) ;
 int cmdq_get_error (char*) ;
 int fatalx (char*) ;
 int free (char*) ;
 int memcpy (struct msg_command_data*,scalar_t__,int) ;
 int server_client_command_done ;
 char** xcalloc (int,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
server_client_dispatch_command(struct client *c, struct imsg *imsg)
{
 struct msg_command_data data;
 char *buf;
 size_t len;
 int argc;
 char **argv, *cause;
 struct cmd_parse_result *pr;

 if (c->flags & CLIENT_EXIT)
  return;

 if (imsg->hdr.len - IMSG_HEADER_SIZE < sizeof data)
  fatalx("bad MSG_COMMAND size");
 memcpy(&data, imsg->data, sizeof data);

 buf = (char *)imsg->data + sizeof data;
 len = imsg->hdr.len - IMSG_HEADER_SIZE - sizeof data;
 if (len > 0 && buf[len - 1] != '\0')
  fatalx("bad MSG_COMMAND string");

 argc = data.argc;
 if (cmd_unpack_argv(buf, len, argc, &argv) != 0) {
  cause = xstrdup("command too long");
  goto error;
 }

 if (argc == 0) {
  argc = 1;
  argv = xcalloc(1, sizeof *argv);
  *argv = xstrdup("new-session");
 }

 pr = cmd_parse_from_arguments(argc, argv, ((void*)0));
 switch (pr->status) {
 case 130:
  cause = xstrdup("empty command");
  goto error;
 case 129:
  cause = pr->error;
  goto error;
 case 128:
  break;
 }
 cmd_free_argv(argc, argv);

 cmdq_append(c, cmdq_get_command(pr->cmdlist, ((void*)0), ((void*)0), 0));
 cmdq_append(c, cmdq_get_callback(server_client_command_done, ((void*)0)));

 cmd_list_free(pr->cmdlist);
 return;

error:
 cmd_free_argv(argc, argv);

 cmdq_append(c, cmdq_get_error(cause));
 free(cause);

 c->flags |= CLIENT_EXIT;
}
