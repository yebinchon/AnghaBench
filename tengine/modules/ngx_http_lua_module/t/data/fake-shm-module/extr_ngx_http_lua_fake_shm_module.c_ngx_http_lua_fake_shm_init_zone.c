
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ ngx_shm_zone_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int isold; int isinit; } ;
typedef TYPE_2__ ngx_http_lua_fake_shm_ctx_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_fake_shm_init_zone(ngx_shm_zone_t *shm_zone, void *data)
{
    ngx_http_lua_fake_shm_ctx_t *octx = data;

    ngx_http_lua_fake_shm_ctx_t *ctx;

    ctx = shm_zone->data;

    if (octx) {
        ctx->isold = 1;
    }

    ctx->isinit = 1;

    return NGX_OK;
}
