
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_4__ {scalar_t__ count; } ;
typedef TYPE_1__ ngx_http_lua_log_ringbuf_t ;
struct TYPE_5__ {TYPE_1__* intercept_error_log_data; } ;


 int NGX_DONE ;
 int NGX_ERROR ;
 TYPE_3__* ngx_cycle ;
 int ngx_http_lua_log_ringbuf_read (TYPE_1__*,int*,void**,int*,double*) ;
 int * ngx_snprintf (int *,size_t,char*) ;

int
ngx_http_lua_ffi_errlog_get_msg(char **log, int *loglevel, u_char *err,
    size_t *errlen, double *log_time)
{
    *errlen = ngx_snprintf(err, *errlen,
                           "missing the capture error log patch for nginx")
              - err;
    return NGX_ERROR;

}
