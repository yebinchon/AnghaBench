
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t len; int not_found; } ;
typedef TYPE_1__ ngx_stream_variable_value_t ;
struct TYPE_8__ {int index; } ;
typedef TYPE_2__ ngx_stream_script_var_code_t ;
struct TYPE_9__ {int session; scalar_t__ flushed; scalar_t__ ip; } ;
typedef TYPE_3__ ngx_stream_script_engine_t ;


 TYPE_1__* ngx_stream_get_flushed_variable (int ,int ) ;
 TYPE_1__* ngx_stream_get_indexed_variable (int ,int ) ;

size_t
ngx_stream_script_copy_var_len_code(ngx_stream_script_engine_t *e)
{
    ngx_stream_variable_value_t *value;
    ngx_stream_script_var_code_t *code;

    code = (ngx_stream_script_var_code_t *) e->ip;

    e->ip += sizeof(ngx_stream_script_var_code_t);

    if (e->flushed) {
        value = ngx_stream_get_indexed_variable(e->session, code->index);

    } else {
        value = ngx_stream_get_flushed_variable(e->session, code->index);
    }

    if (value && !value->not_found) {
        return value->len;
    }

    return 0;
}
