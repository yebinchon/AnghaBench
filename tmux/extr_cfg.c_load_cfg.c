
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {int dummy; } ;
struct cmd_parse_result {scalar_t__ status; int cmdlist; int error; } ;
struct cmd_parse_input {int flags; char const* file; int line; struct client* c; struct cmdq_item* item; } ;
struct client {int dummy; } ;
typedef int FILE ;


 scalar_t__ CMD_PARSE_EMPTY ;
 scalar_t__ CMD_PARSE_ERROR ;
 int CMD_PARSE_PARSEONLY ;
 int CMD_PARSE_QUIET ;
 scalar_t__ ENOENT ;
 int cfg_add_cause (char*,char const*,...) ;
 int cmd_list_free (int ) ;
 struct cmd_parse_result* cmd_parse_from_file (int *,struct cmd_parse_input*) ;
 int cmdq_append (int *,struct cmdq_item*) ;
 struct cmdq_item* cmdq_get_command (int ,int *,int *,int ) ;
 int cmdq_insert_after (struct cmdq_item*,struct cmdq_item*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int ) ;
 int log_debug (char*,char const*) ;
 int memset (struct cmd_parse_input*,int ,int) ;
 int strerror (scalar_t__) ;

int
load_cfg(const char *path, struct client *c, struct cmdq_item *item, int flags,
    struct cmdq_item **new_item)
{
 FILE *f;
 struct cmd_parse_input pi;
 struct cmd_parse_result *pr;
 struct cmdq_item *new_item0;

 if (new_item != ((void*)0))
  *new_item = ((void*)0);

 log_debug("loading %s", path);
 if ((f = fopen(path, "rb")) == ((void*)0)) {
  if (errno == ENOENT && (flags & CMD_PARSE_QUIET))
   return (0);
  cfg_add_cause("%s: %s", path, strerror(errno));
  return (-1);
 }

 memset(&pi, 0, sizeof pi);
 pi.flags = flags;
 pi.file = path;
 pi.line = 1;
 pi.item = item;
 pi.c = c;

 pr = cmd_parse_from_file(f, &pi);
 fclose(f);
 if (pr->status == CMD_PARSE_EMPTY)
  return (0);
 if (pr->status == CMD_PARSE_ERROR) {
  cfg_add_cause("%s", pr->error);
  free(pr->error);
  return (-1);
 }
 if (flags & CMD_PARSE_PARSEONLY) {
  cmd_list_free(pr->cmdlist);
  return (0);
 }

 new_item0 = cmdq_get_command(pr->cmdlist, ((void*)0), ((void*)0), 0);
 if (item != ((void*)0))
  cmdq_insert_after(item, new_item0);
 else
  cmdq_append(((void*)0), new_item0);
 cmd_list_free(pr->cmdlist);

 if (new_item != ((void*)0))
  *new_item = new_item0;
 return (0);
}
