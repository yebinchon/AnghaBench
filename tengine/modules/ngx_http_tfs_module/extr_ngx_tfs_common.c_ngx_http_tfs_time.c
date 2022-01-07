
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int time_t ;
struct TYPE_3__ {size_t ngx_tm_wday; int ngx_tm_mon; int ngx_tm_sec; int ngx_tm_min; int ngx_tm_hour; int ngx_tm_year; int ngx_tm_mday; } ;
typedef TYPE_1__ ngx_tm_t ;


 int * months ;
 int ngx_gmtime (int ,TYPE_1__*) ;
 int * ngx_sprintf (int *,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int * week ;

u_char *
ngx_http_tfs_time(u_char *buf, time_t t)
{
    ngx_tm_t tm;

    ngx_gmtime(t, &tm);

    return ngx_sprintf(buf, "%s, %02d %s %4d %02d:%02d:%02d GMT",
                       week[tm.ngx_tm_wday],
                       tm.ngx_tm_mday,
                       months[tm.ngx_tm_mon - 1],
                       tm.ngx_tm_year,
                       tm.ngx_tm_hour,
                       tm.ngx_tm_min,
                       tm.ngx_tm_sec);
}
