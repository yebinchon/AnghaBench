
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int * values; int * lengths; } ;
typedef TYPE_1__ ngx_http_lua_script_compile_t ;
typedef int ngx_http_lua_script_code_pt ;
struct TYPE_6__ {int n; int code; } ;
typedef TYPE_2__ ngx_http_lua_script_capture_code_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_http_lua_script_add_code (int ,int) ;
 int ngx_http_lua_script_copy_capture_code ;
 scalar_t__ ngx_http_lua_script_copy_capture_len_code ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_script_add_capture_code(ngx_http_lua_script_compile_t *sc,
    ngx_uint_t n)
{
    ngx_http_lua_script_capture_code_t *code;

    code = ngx_http_lua_script_add_code(*sc->lengths,
                                  sizeof(ngx_http_lua_script_capture_code_t));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    code->code = (ngx_http_lua_script_code_pt) (void *)
                 ngx_http_lua_script_copy_capture_len_code;
    code->n = 2 * n;

    code = ngx_http_lua_script_add_code(*sc->values,
                                  sizeof(ngx_http_lua_script_capture_code_t));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    code->code = ngx_http_lua_script_copy_capture_code;
    code->n = 2 * n;

    return NGX_OK;
}
