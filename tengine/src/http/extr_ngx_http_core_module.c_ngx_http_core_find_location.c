
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {char* data; scalar_t__ len; } ;
struct TYPE_12__ {int loc_conf; TYPE_5__ uri; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {scalar_t__ noregex; int loc_conf; int regex; int name; struct TYPE_13__** regex_locations; int static_locations; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_core_find_named_location (TYPE_2__*) ;
 scalar_t__ ngx_http_core_find_static_location (TYPE_2__*,int ) ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 scalar_t__ ngx_http_regex_exec (TYPE_2__*,int ,TYPE_5__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_core_find_location(ngx_http_request_t *r)
{
    ngx_int_t rc;
    ngx_http_core_loc_conf_t *pclcf;
    pclcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);






    rc = ngx_http_core_find_static_location(r, pclcf->static_locations);

    if (rc == NGX_AGAIN) {
        rc = ngx_http_core_find_location(r);
    }

    if (rc == NGX_OK || rc == NGX_DONE) {
        return rc;
    }
    return rc;
}
