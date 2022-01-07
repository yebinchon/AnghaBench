
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct server_pool {int ctx; struct conn* p_conn; } ;
struct conn {int (* close ) (int ,struct conn*) ;} ;
typedef int rstatus_t ;


 int NC_OK ;
 int stub1 (int ,struct conn*) ;

rstatus_t
proxy_each_deinit(void *elem, void *data)
{
    struct server_pool *pool = elem;
    struct conn *p;

    p = pool->p_conn;
    if (p != ((void*)0)) {
        p->close(pool->ctx, p);
    }

    return NC_OK;
}
