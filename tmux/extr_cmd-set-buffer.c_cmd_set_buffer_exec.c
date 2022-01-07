
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct paste_buffer {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {int * entry; struct args* args; } ;
struct args {int argc; char const** argv; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 char* args_get (struct args*,char) ;
 scalar_t__ args_has (struct args*,char) ;
 int cmd_delete_buffer_entry ;
 int cmdq_error (struct cmdq_item*,char*,...) ;
 int free (char*) ;
 int memcpy (char*,char const*,size_t) ;
 char* paste_buffer_data (struct paste_buffer*,size_t*) ;
 int paste_free (struct paste_buffer*) ;
 struct paste_buffer* paste_get_name (char const*) ;
 struct paste_buffer* paste_get_top (char const**) ;
 scalar_t__ paste_rename (char const*,char*,char**) ;
 scalar_t__ paste_set (char*,size_t,char const*,char**) ;
 size_t strlen (char const*) ;
 char* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static enum cmd_retval
cmd_set_buffer_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct paste_buffer *pb;
 char *bufdata, *cause;
 const char *bufname, *olddata;
 size_t bufsize, newsize;

 bufname = args_get(args, 'b');
 if (bufname == ((void*)0))
  pb = ((void*)0);
 else
  pb = paste_get_name(bufname);

 if (self->entry == &cmd_delete_buffer_entry) {
  if (pb == ((void*)0))
   pb = paste_get_top(&bufname);
  if (pb == ((void*)0)) {
   cmdq_error(item, "no buffer");
   return (CMD_RETURN_ERROR);
  }
  paste_free(pb);
  return (CMD_RETURN_NORMAL);
 }

 if (args_has(args, 'n')) {
  if (pb == ((void*)0))
   pb = paste_get_top(&bufname);
  if (pb == ((void*)0)) {
   cmdq_error(item, "no buffer");
   return (CMD_RETURN_ERROR);
  }
  if (paste_rename(bufname, args_get(args, 'n'), &cause) != 0) {
   cmdq_error(item, "%s", cause);
   free(cause);
   return (CMD_RETURN_ERROR);
  }
  return (CMD_RETURN_NORMAL);
 }

 if (args->argc != 1) {
  cmdq_error(item, "no data specified");
  return (CMD_RETURN_ERROR);
 }
 if ((newsize = strlen(args->argv[0])) == 0)
  return (CMD_RETURN_NORMAL);

 bufsize = 0;
 bufdata = ((void*)0);

 if (args_has(args, 'a') && pb != ((void*)0)) {
  olddata = paste_buffer_data(pb, &bufsize);
  bufdata = xmalloc(bufsize);
  memcpy(bufdata, olddata, bufsize);
 }

 bufdata = xrealloc(bufdata, bufsize + newsize);
 memcpy(bufdata + bufsize, args->argv[0], newsize);
 bufsize += newsize;

 if (paste_set(bufdata, bufsize, bufname, &cause) != 0) {
  cmdq_error(item, "%s", cause);
  free(bufdata);
  free(cause);
  return (CMD_RETURN_ERROR);
 }

 return (CMD_RETURN_NORMAL);
}
