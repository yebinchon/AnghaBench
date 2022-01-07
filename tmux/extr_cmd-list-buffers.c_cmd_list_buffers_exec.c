
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {int dummy; } ;
struct format_tree {int dummy; } ;
struct cmdq_item {int client; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_NORMAL ;
 int FORMAT_NONE ;
 char* LIST_BUFFERS_TEMPLATE ;
 char* args_get (struct args*,float) ;
 int cmdq_print (struct cmdq_item*,char*,char*) ;
 struct format_tree* format_create (int ,struct cmdq_item*,int ,int ) ;
 int format_defaults_paste_buffer (struct format_tree*,struct paste_buffer*) ;
 char* format_expand (struct format_tree*,char const*) ;
 int format_free (struct format_tree*) ;
 int free (char*) ;
 struct paste_buffer* paste_walk (struct paste_buffer*) ;

__attribute__((used)) static enum cmd_retval
cmd_list_buffers_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct paste_buffer *pb;
 struct format_tree *ft;
 char *line;
 const char *template;

 if ((template = args_get(args, 'F')) == ((void*)0))
  template = LIST_BUFFERS_TEMPLATE;

 pb = ((void*)0);
 while ((pb = paste_walk(pb)) != ((void*)0)) {
  ft = format_create(item->client, item, FORMAT_NONE, 0);
  format_defaults_paste_buffer(ft, pb);

  line = format_expand(ft, template);
  cmdq_print(item, "%s", line);
  free(line);

  format_free(ft);
 }

 return (CMD_RETURN_NORMAL);
}
