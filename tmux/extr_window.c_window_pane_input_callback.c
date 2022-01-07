
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct window_pane_input_data {int item; int wp; } ;
struct window_pane {int dummy; } ;
struct evbuffer {int dummy; } ;
struct client {int flags; int * stdin_callback; struct evbuffer* stdin_data; } ;


 int CLIENT_DEAD ;
 int CLIENT_EXIT ;
 int * EVBUFFER_DATA (struct evbuffer*) ;
 size_t EVBUFFER_LENGTH (struct evbuffer*) ;
 int cmdq_continue (int ) ;
 int evbuffer_drain (struct evbuffer*,size_t) ;
 int free (struct window_pane_input_data*) ;
 int input_parse_buffer (struct window_pane*,int *,size_t) ;
 int server_client_unref (struct client*) ;
 struct window_pane* window_pane_find_by_id (int ) ;

__attribute__((used)) static void
window_pane_input_callback(struct client *c, int closed, void *data)
{
 struct window_pane_input_data *cdata = data;
 struct window_pane *wp;
 struct evbuffer *evb = c->stdin_data;
 u_char *buf = EVBUFFER_DATA(evb);
 size_t len = EVBUFFER_LENGTH(evb);

 wp = window_pane_find_by_id(cdata->wp);
 if (wp == ((void*)0) || closed || c->flags & CLIENT_DEAD) {
  if (wp == ((void*)0))
   c->flags |= CLIENT_EXIT;
  evbuffer_drain(evb, len);

  c->stdin_callback = ((void*)0);
  server_client_unref(c);

  cmdq_continue(cdata->item);
  free(cdata);

  return;
 }

 input_parse_buffer(wp, buf, len);
 evbuffer_drain(evb, len);
}
