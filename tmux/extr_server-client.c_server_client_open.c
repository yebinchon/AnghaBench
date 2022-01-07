
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int flags; int tty; int ttyname; } ;


 int CLIENT_CONTROL ;
 int CLIENT_TERMINAL ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ tty_open (int *,char**) ;
 char* xstrdup (char*) ;

int
server_client_open(struct client *c, char **cause)
{
 if (c->flags & CLIENT_CONTROL)
  return (0);

 if (strcmp(c->ttyname, "/dev/tty") == 0) {
  *cause = xstrdup("can't use /dev/tty");
  return (-1);
 }

 if (!(c->flags & CLIENT_TERMINAL)) {
  *cause = xstrdup("not a terminal");
  return (-1);
 }

 if (tty_open(&c->tty, cause) != 0)
  return (-1);

 return (0);
}
