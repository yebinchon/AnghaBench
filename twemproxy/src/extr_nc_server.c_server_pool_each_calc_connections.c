
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int server_connections; int server; } ;
struct context {int max_nsconn; } ;
typedef int rstatus_t ;


 int NC_OK ;
 int array_n (int *) ;

__attribute__((used)) static rstatus_t
server_pool_each_calc_connections(void *elem, void *data)
{
    struct server_pool *sp = elem;
    struct context *ctx = data;

    ctx->max_nsconn += sp->server_connections * array_n(&sp->server);
    ctx->max_nsconn += 1;

    return NC_OK;
}
