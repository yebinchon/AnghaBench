
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct client {int stdout_data; } ;


 int evbuffer_add (int ,char*,int) ;
 int evbuffer_add_buffer (int ,struct evbuffer*) ;
 int server_client_push_stdout (struct client*) ;

void
control_write_buffer(struct client *c, struct evbuffer *buffer)
{
 evbuffer_add_buffer(c->stdout_data, buffer);
 evbuffer_add(c->stdout_data, "\n", 1);
 server_client_push_stdout(c);
}
