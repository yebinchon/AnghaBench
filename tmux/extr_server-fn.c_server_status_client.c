
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int flags; } ;


 int CLIENT_REDRAWSTATUS ;

void
server_status_client(struct client *c)
{
 c->flags |= CLIENT_REDRAWSTATUS;
}
