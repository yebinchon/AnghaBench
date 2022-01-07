
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int ngx_tm_sec; int ngx_tm_min; int ngx_tm_hour; int ngx_tm_mday; int ngx_tm_mon; int ngx_tm_year; } ;
typedef TYPE_1__ ngx_tm_t ;
typedef int lua_State ;
typedef int buf ;


 int lua_pushlstring (int *,char*,int) ;
 int ngx_gmtime (int ,TYPE_1__*) ;
 int ngx_sprintf (int *,char*,int ,int ,int ,int ,int ,int ) ;
 int ngx_time () ;

__attribute__((used)) static int
ngx_http_lua_ngx_utctime(lua_State *L)
{
    ngx_tm_t tm;
    u_char buf[sizeof("2010-11-19 20:56:31") - 1];

    ngx_gmtime(ngx_time(), &tm);

    ngx_sprintf(buf, "%04d-%02d-%02d %02d:%02d:%02d", tm.ngx_tm_year,
                tm.ngx_tm_mon, tm.ngx_tm_mday, tm.ngx_tm_hour, tm.ngx_tm_min,
                tm.ngx_tm_sec);

    lua_pushlstring(L, (char *) buf, sizeof(buf));

    return 1;
}
