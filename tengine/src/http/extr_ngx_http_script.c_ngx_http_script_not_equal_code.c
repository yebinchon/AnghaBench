
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_11__ {int ip; TYPE_2__* request; TYPE_3__* sp; } ;
typedef TYPE_4__ ngx_http_script_engine_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_3__ ngx_http_variable_null_value ;
 TYPE_3__ ngx_http_variable_true_value ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

void
ngx_http_script_not_equal_code(ngx_http_script_engine_t *e)
{
    ngx_http_variable_value_t *val, *res;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script not equal");

    e->sp--;
    val = e->sp;
    res = e->sp - 1;

    e->ip += sizeof(uintptr_t);

    if (val->len == res->len
        && ngx_strncmp(val->data, res->data, res->len) == 0)
    {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                       "http script not equal: no");

        *res = ngx_http_variable_null_value;
        return;
    }

    *res = ngx_http_variable_true_value;
}
