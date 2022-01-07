
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int flags; void (* stdin_callback ) (struct client*,int,void*) ;void* stdin_callback_data; int peer; scalar_t__ stdin_closed; int references; int * session; } ;


 int CLIENT_TERMINAL ;
 int MSG_STDIN ;
 int proc_send (int ,int ,int,int *,int ) ;
 void stub1 (struct client*,int,void*) ;
 char* xstrdup (char*) ;

int
server_set_stdin_callback(struct client *c, void (*cb)(struct client *, int,
    void *), void *cb_data, char **cause)
{
 if (c == ((void*)0) || c->session != ((void*)0)) {
  *cause = xstrdup("no client with stdin");
  return (-1);
 }
 if (c->flags & CLIENT_TERMINAL) {
  *cause = xstrdup("stdin is a tty");
  return (-1);
 }
 if (c->stdin_callback != ((void*)0)) {
  *cause = xstrdup("stdin is in use");
  return (-1);
 }

 c->stdin_callback_data = cb_data;
 c->stdin_callback = cb;

 c->references++;

 if (c->stdin_closed)
  c->stdin_callback(c, 1, c->stdin_callback_data);

 proc_send(c->peer, MSG_STDIN, -1, ((void*)0), 0);

 return (0);
}
