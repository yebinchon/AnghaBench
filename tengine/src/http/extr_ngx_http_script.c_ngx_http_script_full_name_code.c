
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ data; scalar_t__ len; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_15__ {scalar_t__ conf_prefix; } ;
typedef TYPE_4__ ngx_http_script_full_name_code_t ;
struct TYPE_16__ {scalar_t__ ip; TYPE_2__* request; TYPE_3__ buf; int status; scalar_t__ pos; } ;
typedef TYPE_5__ ngx_http_script_engine_t ;
struct TYPE_13__ {TYPE_1__* connection; int pool; } ;
struct TYPE_12__ {int log; } ;
struct TYPE_11__ {int prefix; int conf_prefix; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_10__* ngx_cycle ;
 scalar_t__ ngx_get_full_name (int ,TYPE_3__*,TYPE_3__*) ;
 scalar_t__ ngx_http_script_exit ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_3__*) ;

__attribute__((used)) static void
ngx_http_script_full_name_code(ngx_http_script_engine_t *e)
{
    ngx_http_script_full_name_code_t *code;

    ngx_str_t value, *prefix;

    code = (ngx_http_script_full_name_code_t *) e->ip;

    value.data = e->buf.data;
    value.len = e->pos - e->buf.data;

    prefix = code->conf_prefix ? (ngx_str_t *) &ngx_cycle->conf_prefix:
                                 (ngx_str_t *) &ngx_cycle->prefix;

    if (ngx_get_full_name(e->request->pool, prefix, &value) != NGX_OK) {
        e->ip = ngx_http_script_exit;
        e->status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        return;
    }

    e->buf = value;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script fullname: \"%V\"", &value);

    e->ip += sizeof(ngx_http_script_full_name_code_t);
}
