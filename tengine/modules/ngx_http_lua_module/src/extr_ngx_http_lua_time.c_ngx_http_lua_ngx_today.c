
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ time_t ;
struct TYPE_4__ {int ngx_tm_mday; int ngx_tm_mon; int ngx_tm_year; } ;
typedef TYPE_1__ ngx_tm_t ;
typedef int lua_State ;
typedef int buf ;
struct TYPE_5__ {int gmtoff; } ;


 int lua_pushlstring (int *,char*,int) ;
 TYPE_3__* ngx_cached_time ;
 int ngx_gmtime (scalar_t__,TYPE_1__*) ;
 int ngx_sprintf (int *,char*,int ,int ,int ) ;
 scalar_t__ ngx_time () ;

__attribute__((used)) static int
ngx_http_lua_ngx_today(lua_State *L)
{
    time_t now;
    ngx_tm_t tm;
    u_char buf[sizeof("2010-11-19") - 1];

    now = ngx_time();
    ngx_gmtime(now + ngx_cached_time->gmtoff * 60, &tm);

    ngx_sprintf(buf, "%04d-%02d-%02d", tm.ngx_tm_year, tm.ngx_tm_mon,
                tm.ngx_tm_mday);

    lua_pushlstring(L, (char *) buf, sizeof(buf));

    return 1;
}
