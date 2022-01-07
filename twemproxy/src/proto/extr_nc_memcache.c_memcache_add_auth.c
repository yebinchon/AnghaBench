
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;
struct conn {int dummy; } ;
typedef int rstatus_t ;


 int NC_OK ;
 int NOT_REACHED () ;

rstatus_t
memcache_add_auth(struct context *ctx, struct conn *c_conn, struct conn *s_conn)
{
    NOT_REACHED();
    return NC_OK;
}
