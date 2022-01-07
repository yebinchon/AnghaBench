
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int ngx_uint_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {size_t sbrk_size; } ;
typedef TYPE_3__ ngx_http_degradation_main_conf_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_NOTICE ;
 int ngx_http_degradation_module ;
 TYPE_3__* ngx_http_get_module_main_conf (TYPE_2__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,size_t) ;
 scalar_t__ ngx_palloc ;
 scalar_t__ ngx_time () ;
 scalar_t__ sbrk (int ) ;

ngx_uint_t
ngx_http_degraded(ngx_http_request_t *r)
{
    time_t now;
    ngx_uint_t log;
    static size_t sbrk_size;
    static time_t sbrk_time;
    ngx_http_degradation_main_conf_t *dmcf;

    dmcf = ngx_http_get_module_main_conf(r, ngx_http_degradation_module);

    if (dmcf->sbrk_size) {

        log = 0;
        now = ngx_time();



        if (now != sbrk_time) {
            sbrk_size = (size_t) sbrk(0) - ((uintptr_t) ngx_palloc & ~0x3FFFFF);
            sbrk_time = now;
            log = 1;
        }



        if (sbrk_size >= dmcf->sbrk_size) {
            if (log) {
                ngx_log_error(NGX_LOG_NOTICE, r->connection->log, 0,
                              "degradation sbrk:%uzM",
                              sbrk_size / (1024 * 1024));
            }

            return 1;
        }
    }

    return 0;
}
