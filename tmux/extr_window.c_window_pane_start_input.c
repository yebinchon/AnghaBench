
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane_input_data {int wp; struct cmdq_item* item; } ;
struct window_pane {int flags; int id; } ;
struct cmdq_item {struct client* client; } ;
struct client {int dummy; } ;


 int PANE_EMPTY ;
 int server_set_stdin_callback (struct client*,int ,struct window_pane_input_data*,char**) ;
 int window_pane_input_callback ;
 struct window_pane_input_data* xmalloc (int) ;
 char* xstrdup (char*) ;

int
window_pane_start_input(struct window_pane *wp, struct cmdq_item *item,
    char **cause)
{
 struct client *c = item->client;
 struct window_pane_input_data *cdata;

 if (~wp->flags & PANE_EMPTY) {
  *cause = xstrdup("pane is not empty");
  return (-1);
 }

 cdata = xmalloc(sizeof *cdata);
 cdata->item = item;
 cdata->wp = wp->id;

 return (server_set_stdin_callback(c, window_pane_input_callback, cdata,
     cause));
}
