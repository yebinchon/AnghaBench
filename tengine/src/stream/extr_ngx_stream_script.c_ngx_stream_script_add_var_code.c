
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {uintptr_t index; int code; } ;
typedef TYPE_1__ ngx_stream_script_var_code_t ;
struct TYPE_6__ {int main; int * values; int * lengths; int * flushes; int cf; } ;
typedef TYPE_2__ ngx_stream_script_compile_t ;
typedef int ngx_stream_script_code_pt ;
typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__* ngx_array_push (int ) ;
 scalar_t__ ngx_stream_get_variable_index (int ,int *) ;
 TYPE_1__* ngx_stream_script_add_code (int ,int,int *) ;
 int ngx_stream_script_copy_var_code ;
 scalar_t__ ngx_stream_script_copy_var_len_code ;

__attribute__((used)) static ngx_int_t
ngx_stream_script_add_var_code(ngx_stream_script_compile_t *sc, ngx_str_t *name)
{
    ngx_int_t index, *p;
    ngx_stream_script_var_code_t *code;

    index = ngx_stream_get_variable_index(sc->cf, name);

    if (index == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (sc->flushes) {
        p = ngx_array_push(*sc->flushes);
        if (p == ((void*)0)) {
            return NGX_ERROR;
        }

        *p = index;
    }

    code = ngx_stream_script_add_code(*sc->lengths,
                                      sizeof(ngx_stream_script_var_code_t),
                                      ((void*)0));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    code->code = (ngx_stream_script_code_pt) (void *)
                                           ngx_stream_script_copy_var_len_code;
    code->index = (uintptr_t) index;

    code = ngx_stream_script_add_code(*sc->values,
                                      sizeof(ngx_stream_script_var_code_t),
                                      &sc->main);
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    code->code = ngx_stream_script_copy_var_code;
    code->index = (uintptr_t) index;

    return NGX_OK;
}
