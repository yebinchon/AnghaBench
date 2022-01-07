
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef char u_char ;
struct window_pane {char const id; int window; } ;
struct evbuffer {int dummy; } ;
struct client {int flags; TYPE_1__* session; } ;
struct TYPE_2__ {int windows; } ;


 int CLIENT_CONTROL_NOOUTPUT ;
 int control_write_buffer (struct client*,struct evbuffer*) ;
 int evbuffer_add_printf (struct evbuffer*,char*,char const) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int fatalx (char*) ;
 int * winlink_find_by_window (int *,int ) ;

void
control_notify_input(struct client *c, struct window_pane *wp,
    const u_char *buf, size_t len)
{
 struct evbuffer *message;
 u_int i;

 if (c->session == ((void*)0))
     return;

 if (c->flags & CLIENT_CONTROL_NOOUTPUT)
  return;





 if (winlink_find_by_window(&c->session->windows, wp->window) != ((void*)0)) {
  message = evbuffer_new();
  if (message == ((void*)0))
   fatalx("out of memory");
  evbuffer_add_printf(message, "%%output %%%u ", wp->id);
  for (i = 0; i < len; i++) {
   if (buf[i] < ' ' || buf[i] == '\\')
       evbuffer_add_printf(message, "\\%03o", buf[i]);
   else
       evbuffer_add_printf(message, "%c", buf[i]);
  }
  control_write_buffer(c, message);
  evbuffer_free(message);
 }
}
