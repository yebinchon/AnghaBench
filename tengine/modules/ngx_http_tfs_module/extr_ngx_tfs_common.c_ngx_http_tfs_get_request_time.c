
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_9__ {int sec; int msec; } ;
typedef TYPE_1__ ngx_time_t ;
typedef int ngx_msec_int_t ;
struct TYPE_10__ {TYPE_3__* data; } ;
typedef TYPE_2__ ngx_http_tfs_t ;
struct TYPE_11__ {int start_sec; int start_msec; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {scalar_t__ request_time_cache; } ;
typedef TYPE_4__ ngx_http_core_loc_conf_t ;


 int ngx_gettimeofday (struct timeval*) ;
 int ngx_http_core_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_max (int,int ) ;
 TYPE_1__* ngx_timeofday () ;

ngx_msec_int_t
ngx_http_tfs_get_request_time(ngx_http_tfs_t *t)
{
    ngx_time_t *tp;
    ngx_msec_int_t ms;
    ngx_http_request_t *r;





    r = t->data;
    tp = ngx_timeofday();
    ms = (ngx_msec_int_t)
             ((tp->sec - r->start_sec) * 1000 + (tp->msec - r->start_msec));


    ms = ngx_max(ms, 0);

    return ms;
}
