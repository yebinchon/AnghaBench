
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int filter_level; } ;
typedef TYPE_1__ ngx_http_lua_log_ringbuf_t ;
struct TYPE_4__ {TYPE_1__* intercept_error_log_data; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG ;
 int NGX_LOG_STDERR ;
 int NGX_OK ;
 TYPE_2__* ngx_cycle ;
 int * ngx_snprintf (int *,size_t,char*,...) ;

int
ngx_http_lua_ffi_errlog_set_filter_level(int level, u_char *err, size_t *errlen)
{
    *errlen = ngx_snprintf(err, *errlen,
                           "missing the capture error log patch for nginx")
              - err;
    return NGX_ERROR;

}
