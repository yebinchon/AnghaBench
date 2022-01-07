
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_2__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_1__* ngx_cycle ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

__attribute__((used)) static void
ngx_http_dyups_clean_request(void *data)
{
    ngx_uint_t *ref = data;

    (*ref)--;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "[dyups] http clean request count %i", *ref);
}
