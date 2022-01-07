
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_3__ {int main; int * values; int * lengths; } ;
typedef TYPE_1__ ngx_http_script_compile_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 uintptr_t* ngx_http_script_add_code (int ,int,int *) ;
 int ngx_http_script_mark_args_code ;
 int ngx_http_script_start_args_code ;

__attribute__((used)) static ngx_int_t
ngx_http_script_add_args_code(ngx_http_script_compile_t *sc)
{
    uintptr_t *code;

    code = ngx_http_script_add_code(*sc->lengths, sizeof(uintptr_t), ((void*)0));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    *code = (uintptr_t) ngx_http_script_mark_args_code;

    code = ngx_http_script_add_code(*sc->values, sizeof(uintptr_t), &sc->main);
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    *code = (uintptr_t) ngx_http_script_start_args_code;

    return NGX_OK;
}
