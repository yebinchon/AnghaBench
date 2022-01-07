
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long double msec; scalar_t__ sec; } ;
typedef TYPE_1__ ngx_time_t ;
typedef int lua_State ;
typedef int lua_Number ;


 int lua_pushnumber (int *,int ) ;
 TYPE_1__* ngx_timeofday () ;

__attribute__((used)) static int
ngx_http_lua_ngx_now(lua_State *L)
{
    ngx_time_t *tp;

    tp = ngx_timeofday();

    lua_pushnumber(L, (lua_Number) (tp->sec + tp->msec / 1000.0L));

    return 1;
}
