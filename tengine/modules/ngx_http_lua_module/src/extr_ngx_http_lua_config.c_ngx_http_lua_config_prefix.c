
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ prefix; } ;


 int lua_pushlstring (int *,char*,int ) ;
 TYPE_2__* ngx_cycle ;

__attribute__((used)) static int
ngx_http_lua_config_prefix(lua_State *L)
{
    lua_pushlstring(L, (char *) ngx_cycle->prefix.data,
                    ngx_cycle->prefix.len);
    return 1;
}
