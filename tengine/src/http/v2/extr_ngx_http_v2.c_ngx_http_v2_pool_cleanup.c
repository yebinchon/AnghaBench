
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pool; } ;
struct TYPE_4__ {scalar_t__ pool; TYPE_1__ state; } ;
typedef TYPE_2__ ngx_http_v2_connection_t ;


 int ngx_destroy_pool (scalar_t__) ;

__attribute__((used)) static void
ngx_http_v2_pool_cleanup(void *data)
{
    ngx_http_v2_connection_t *h2c = data;

    if (h2c->state.pool) {
        ngx_destroy_pool(h2c->state.pool);
    }

    if (h2c->pool) {
        ngx_destroy_pool(h2c->pool);
    }
}
