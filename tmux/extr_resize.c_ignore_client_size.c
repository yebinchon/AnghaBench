
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int flags; int * session; } ;


 int CLIENT_CONTROL ;
 int CLIENT_NOSIZEFLAGS ;
 int CLIENT_SIZECHANGED ;

__attribute__((used)) static int
ignore_client_size(struct client *c)
{
 if (c->session == ((void*)0))
  return (1);
 if (c->flags & CLIENT_NOSIZEFLAGS)
  return (1);
 if ((c->flags & CLIENT_CONTROL) && (~c->flags & CLIENT_SIZECHANGED))
  return (1);
 return (0);
}
