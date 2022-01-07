
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int ngx_tm_sec; int ngx_tm_min; int ngx_tm_hour; int ngx_tm_mday; int ngx_tm_mon; int ngx_tm_year; } ;
typedef TYPE_1__ ngx_tm_t ;
struct TYPE_5__ {int gmtoff; } ;


 TYPE_3__* ngx_cached_time ;
 int ngx_gmtime (scalar_t__,TYPE_1__*) ;
 int ngx_sprintf (int *,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ ngx_time () ;

void
ngx_http_lua_ffi_localtime(u_char *buf)
{
    ngx_tm_t tm;

    ngx_gmtime(ngx_time() + ngx_cached_time->gmtoff * 60, &tm);

    ngx_sprintf(buf, "%04d-%02d-%02d %02d:%02d:%02d", tm.ngx_tm_year,
                tm.ngx_tm_mon, tm.ngx_tm_mday, tm.ngx_tm_hour, tm.ngx_tm_min,
                tm.ngx_tm_sec);
}
