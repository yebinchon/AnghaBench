
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ searchtype; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_NOTHING ;
 scalar_t__ WINDOW_COPY_SEARCHDOWN ;
 scalar_t__ WINDOW_COPY_SEARCHUP ;
 int window_copy_search_down (struct window_mode_entry*) ;
 int window_copy_search_up (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_search_again(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int np = wme->prefix;

 if (data->searchtype == WINDOW_COPY_SEARCHUP) {
  for (; np != 0; np--)
   window_copy_search_up(wme);
 } else if (data->searchtype == WINDOW_COPY_SEARCHDOWN) {
  for (; np != 0; np--)
   window_copy_search_down(wme);
 }
 return (WINDOW_COPY_CMD_NOTHING);
}
