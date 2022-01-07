
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct window_pane {int flags; int event; TYPE_2__* screen; } ;
struct paste_buffer {int dummy; } ;
struct TYPE_3__ {struct window_pane* wp; } ;
struct cmdq_item {TYPE_1__ target; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;
struct TYPE_4__ {int mode; } ;


 int CMD_RETURN_ERROR ;
 int CMD_RETURN_NORMAL ;
 int MODE_BRACKETPASTE ;
 int PANE_INPUTOFF ;
 char* args_get (struct args*,char) ;
 int args_has (struct args*,char) ;
 int bufferevent_write (int ,char const*,int) ;
 int cmdq_error (struct cmdq_item*,char*,char const*) ;
 char* memchr (char const*,char,int) ;
 char* paste_buffer_data (struct paste_buffer*,size_t*) ;
 int paste_free (struct paste_buffer*) ;
 struct paste_buffer* paste_get_name (char const*) ;
 struct paste_buffer* paste_get_top (int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static enum cmd_retval
cmd_paste_buffer_exec(struct cmd *self, struct cmdq_item *item)
{
 struct args *args = self->args;
 struct window_pane *wp = item->target.wp;
 struct paste_buffer *pb;
 const char *sepstr, *bufname, *bufdata, *bufend, *line;
 size_t seplen, bufsize;
 int bracket = args_has(args, 'p');

 bufname = ((void*)0);
 if (args_has(args, 'b'))
  bufname = args_get(args, 'b');

 if (bufname == ((void*)0))
  pb = paste_get_top(((void*)0));
 else {
  pb = paste_get_name(bufname);
  if (pb == ((void*)0)) {
   cmdq_error(item, "no buffer %s", bufname);
   return (CMD_RETURN_ERROR);
  }
 }

 if (pb != ((void*)0) && ~wp->flags & PANE_INPUTOFF) {
  sepstr = args_get(args, 's');
  if (sepstr == ((void*)0)) {
   if (args_has(args, 'r'))
    sepstr = "\n";
   else
    sepstr = "\r";
  }
  seplen = strlen(sepstr);

  if (bracket && (wp->screen->mode & MODE_BRACKETPASTE))
   bufferevent_write(wp->event, "\033[200~", 6);

  bufdata = paste_buffer_data(pb, &bufsize);
  bufend = bufdata + bufsize;

  for (;;) {
   line = memchr(bufdata, '\n', bufend - bufdata);
   if (line == ((void*)0))
    break;

   bufferevent_write(wp->event, bufdata, line - bufdata);
   bufferevent_write(wp->event, sepstr, seplen);

   bufdata = line + 1;
  }
  if (bufdata != bufend)
   bufferevent_write(wp->event, bufdata, bufend - bufdata);

  if (bracket && (wp->screen->mode & MODE_BRACKETPASTE))
   bufferevent_write(wp->event, "\033[201~", 6);
 }

 if (pb != ((void*)0) && args_has(args, 'd'))
  paste_free(pb);

 return (CMD_RETURN_NORMAL);
}
