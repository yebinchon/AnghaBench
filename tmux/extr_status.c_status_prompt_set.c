
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct format_tree {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct client {int prompt_flags; void* prompt_data; int (* prompt_inputcb ) (struct client*,void*,char*,int ) ;int flags; TYPE_1__ tty; int prompt_mode; scalar_t__ prompt_hindex; int prompt_freecb; int prompt_buffer; int prompt_index; void* prompt_string; } ;
typedef int (* prompt_input_cb ) (struct client*,void*,char*,int ) ;
typedef int prompt_free_cb ;


 int CLIENT_REDRAWSTATUS ;
 int FORMAT_NONE ;
 int PROMPT_ENTRY ;
 int PROMPT_INCREMENTAL ;
 int PROMPT_NOFORMAT ;
 int TTY_FREEZE ;
 int TTY_NOCURSOR ;
 struct format_tree* format_create (struct client*,int *,int ,int ) ;
 int format_defaults (struct format_tree*,struct client*,int *,int *,int *) ;
 void* format_expand_time (struct format_tree*,char const*) ;
 int format_free (struct format_tree*) ;
 int free (char*) ;
 int status_message_clear (struct client*) ;
 int status_prompt_clear (struct client*) ;
 int status_push_screen (struct client*) ;
 int stub1 (struct client*,void*,char*,int ) ;
 int utf8_fromcstr (char*) ;
 int utf8_strlen (int ) ;
 int xasprintf (char**,char*,char*) ;
 char* xstrdup (char const*) ;

void
status_prompt_set(struct client *c, const char *msg, const char *input,
    prompt_input_cb inputcb, prompt_free_cb freecb, void *data, int flags)
{
 struct format_tree *ft;
 char *tmp, *cp;

 ft = format_create(c, ((void*)0), FORMAT_NONE, 0);
 format_defaults(ft, c, ((void*)0), ((void*)0), ((void*)0));

 if (input == ((void*)0))
  input = "";
 if (flags & PROMPT_NOFORMAT)
  tmp = xstrdup(input);
 else
  tmp = format_expand_time(ft, input);

 status_message_clear(c);
 status_prompt_clear(c);
 status_push_screen(c);

 c->prompt_string = format_expand_time(ft, msg);

 c->prompt_buffer = utf8_fromcstr(tmp);
 c->prompt_index = utf8_strlen(c->prompt_buffer);

 c->prompt_inputcb = inputcb;
 c->prompt_freecb = freecb;
 c->prompt_data = data;

 c->prompt_hindex = 0;

 c->prompt_flags = flags;
 c->prompt_mode = PROMPT_ENTRY;

 if (~flags & PROMPT_INCREMENTAL)
  c->tty.flags |= (TTY_NOCURSOR|TTY_FREEZE);
 c->flags |= CLIENT_REDRAWSTATUS;

 if ((flags & PROMPT_INCREMENTAL) && *tmp != '\0') {
  xasprintf(&cp, "=%s", tmp);
  c->prompt_inputcb(c, c->prompt_data, cp, 0);
  free(cp);
 }

 free(tmp);
 format_free(ft);
}
