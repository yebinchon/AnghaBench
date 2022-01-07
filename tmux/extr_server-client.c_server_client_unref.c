
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {scalar_t__ references; } ;


 int EV_TIMEOUT ;
 int event_once (int,int ,int ,struct client*,int *) ;
 int log_debug (char*,struct client*,scalar_t__) ;
 int server_client_free ;

void
server_client_unref(struct client *c)
{
 log_debug("unref client %p (%d references)", c, c->references);

 c->references--;
 if (c->references == 0)
  event_once(-1, EV_TIMEOUT, server_client_free, c, ((void*)0));
}
