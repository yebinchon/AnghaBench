
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {int * values; scalar_t__ complete_values; int * lengths; scalar_t__ complete_lengths; } ;
typedef TYPE_1__ ngx_http_lua_script_compile_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 uintptr_t* ngx_http_lua_script_add_code (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_script_done(ngx_http_lua_script_compile_t *sc)
{
    uintptr_t *code;

    if (sc->complete_lengths) {
        code = ngx_http_lua_script_add_code(*sc->lengths, sizeof(uintptr_t));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);
    }

    if (sc->complete_values) {
        code = ngx_http_lua_script_add_code(*sc->values, sizeof(uintptr_t));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);
    }

    return NGX_OK;
}
