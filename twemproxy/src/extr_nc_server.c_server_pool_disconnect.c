
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int pool; } ;


 int array_each (int *,int ,int *) ;
 int server_pool_each_disconnect ;

void
server_pool_disconnect(struct context *ctx)
{
    array_each(&ctx->pool, server_pool_each_disconnect, ((void*)0));
}
