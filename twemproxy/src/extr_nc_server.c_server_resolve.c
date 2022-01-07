
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_2__ {int addr; int addrlen; int family; } ;
struct server {TYPE_1__ info; int port; int addrstr; } ;
struct conn {int done; struct sockaddr* addr; int addrlen; int family; int err; } ;
typedef scalar_t__ rstatus_t ;


 int EHOSTDOWN ;
 scalar_t__ NC_OK ;
 scalar_t__ nc_resolve (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void
server_resolve(struct server *server, struct conn *conn)
{
    rstatus_t status;

    status = nc_resolve(&server->addrstr, server->port, &server->info);
    if (status != NC_OK) {
        conn->err = EHOSTDOWN;
        conn->done = 1;
        return;
    }

    conn->family = server->info.family;
    conn->addrlen = server->info.addrlen;
    conn->addr = (struct sockaddr *)&server->info.addr;
}
