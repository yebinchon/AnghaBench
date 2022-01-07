
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; int wp; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {char* searchstr; int searchtype; } ;
struct window_copy_cmd_state {TYPE_1__* args; struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;
struct TYPE_2__ {int argc; char** argv; } ;


 int WINDOW_COPY_CMD_NOTHING ;
 int WINDOW_COPY_SEARCHUP ;
 scalar_t__ args_has (TYPE_1__*,float) ;
 char* format_single (int *,char const*,int *,int *,int *,int ) ;
 int free (char*) ;
 int window_copy_search_up (struct window_mode_entry*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_search_backward(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int np = wme->prefix;
 const char *argument;
 char *expanded;

 if (cs->args->argc == 2) {
  argument = cs->args->argv[1];
  if (*argument != '\0') {
   if (args_has(cs->args, 'F')) {
    expanded = format_single(((void*)0), argument, ((void*)0),
        ((void*)0), ((void*)0), wme->wp);
    if (*expanded == '\0') {
     free(expanded);
     return (WINDOW_COPY_CMD_NOTHING);
    }
    free(data->searchstr);
    data->searchstr = expanded;
   } else {
    free(data->searchstr);
    data->searchstr = xstrdup(argument);
   }
  }
 }
 if (data->searchstr != ((void*)0)) {
  data->searchtype = WINDOW_COPY_SEARCHUP;
  for (; np != 0; np--)
   window_copy_search_up(wme);
 }
 return (WINDOW_COPY_CMD_NOTHING);
}
