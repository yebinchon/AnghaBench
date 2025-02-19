
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_stream_log_op_t ;
struct TYPE_12__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_13__ {TYPE_11__ formats; } ;
typedef TYPE_1__ ngx_stream_log_main_conf_t ;
struct TYPE_15__ {scalar_t__ len; int data; } ;
struct TYPE_14__ {int * ops; int * flushes; TYPE_3__ name; } ;
typedef TYPE_2__ ngx_stream_log_fmt_t ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {TYPE_7__* args; int pool; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_17__ {TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 int NGX_LOG_EMERG ;
 void* ngx_array_create (int ,int,int) ;
 TYPE_2__* ngx_array_push (TYPE_11__*) ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,TYPE_3__*) ;
 scalar_t__ ngx_strcmp (int ,int ) ;
 char* ngx_stream_log_compile_format (TYPE_4__*,int *,int *,TYPE_7__*,int) ;

__attribute__((used)) static char *
ngx_stream_log_set_format(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_stream_log_main_conf_t *lmcf = conf;

    ngx_str_t *value;
    ngx_uint_t i;
    ngx_stream_log_fmt_t *fmt;

    value = cf->args->elts;

    fmt = lmcf->formats.elts;
    for (i = 0; i < lmcf->formats.nelts; i++) {
        if (fmt[i].name.len == value[1].len
            && ngx_strcmp(fmt[i].name.data, value[1].data) == 0)
        {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "duplicate \"log_format\" name \"%V\"",
                               &value[1]);
            return NGX_CONF_ERROR;
        }
    }

    fmt = ngx_array_push(&lmcf->formats);
    if (fmt == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    fmt->name = value[1];

    fmt->flushes = ngx_array_create(cf->pool, 4, sizeof(ngx_int_t));
    if (fmt->flushes == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    fmt->ops = ngx_array_create(cf->pool, 16, sizeof(ngx_stream_log_op_t));
    if (fmt->ops == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    return ngx_stream_log_compile_format(cf, fmt->flushes, fmt->ops,
                                         cf->args, 2);
}
