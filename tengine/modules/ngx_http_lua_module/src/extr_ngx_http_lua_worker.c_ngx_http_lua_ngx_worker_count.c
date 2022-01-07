
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ worker_processes; } ;
typedef TYPE_1__ ngx_core_conf_t ;
typedef int lua_State ;
typedef int lua_Integer ;
struct TYPE_4__ {int conf_ctx; } ;


 int lua_pushinteger (int *,int ) ;
 int ngx_core_module ;
 TYPE_2__* ngx_cycle ;
 scalar_t__ ngx_get_conf (int ,int ) ;

__attribute__((used)) static int
ngx_http_lua_ngx_worker_count(lua_State *L)
{
    ngx_core_conf_t *ccf;

    ccf = (ngx_core_conf_t *) ngx_get_conf(ngx_cycle->conf_ctx,
                                           ngx_core_module);

    lua_pushinteger(L, (lua_Integer) ccf->worker_processes);
    return 1;
}
