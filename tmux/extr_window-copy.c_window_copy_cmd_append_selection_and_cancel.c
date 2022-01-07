
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_mode_entry {int dummy; } ;
struct window_copy_cmd_state {struct session* s; struct window_mode_entry* wme; } ;
struct session {int dummy; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_CANCEL ;
 int window_copy_append_selection (struct window_mode_entry*) ;
 int window_copy_clear_selection (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_append_selection_and_cancel(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct session *s = cs->s;

 if (s != ((void*)0))
  window_copy_append_selection(wme);
 window_copy_clear_selection(wme);
 return (WINDOW_COPY_CMD_CANCEL);
}
