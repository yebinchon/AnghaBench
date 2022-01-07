
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int server; } ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_OK ;
 scalar_t__ array_each (int *,int ,int *) ;
 int server_each_disconnect ;

__attribute__((used)) static rstatus_t
server_pool_each_disconnect(void *elem, void *data)
{
    rstatus_t status;
    struct server_pool *sp = elem;

    status = array_each(&sp->server, server_each_disconnect, ((void*)0));
    if (status != NC_OK) {
        return status;
    }

    return NC_OK;
}
