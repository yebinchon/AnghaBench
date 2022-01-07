
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_log_intercept_pt ;
struct TYPE_12__ {int requires_capture_log; } ;
typedef TYPE_3__ ngx_http_lua_main_conf_t ;
typedef int ngx_http_lua_log_ringbuf_t ;
struct TYPE_13__ {int * intercept_error_log_data; scalar_t__ intercept_error_log_handler; } ;
typedef TYPE_4__ ngx_cycle_t ;
struct TYPE_14__ {int pool; TYPE_4__* cycle; TYPE_1__* args; } ;
typedef TYPE_5__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_10__ {TYPE_2__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_MAX_ERROR_STR ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,TYPE_2__*,...) ;
 scalar_t__ ngx_http_lua_capture_log_handler ;
 int ngx_http_lua_log_ringbuf_init (int *,int *,int) ;
 int * ngx_palloc (int ,int) ;
 int ngx_parse_size (TYPE_2__*) ;

char *
ngx_http_lua_capture_error_log(ngx_conf_t *cf, ngx_command_t *cmd,
    void *conf)
{

    return "not found: missing the capture error log patch for nginx";
}
