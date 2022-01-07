
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_5__ {int conf_prefix; int code; } ;
typedef TYPE_1__ ngx_http_script_full_name_code_t ;
struct TYPE_6__ {int conf_prefix; int main; int * values; int * lengths; } ;
typedef TYPE_2__ ngx_http_script_compile_t ;
typedef int ngx_http_script_code_pt ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_1__* ngx_http_script_add_code (int ,int,int *) ;
 int ngx_http_script_full_name_code ;
 scalar_t__ ngx_http_script_full_name_len_code ;

__attribute__((used)) static ngx_int_t
ngx_http_script_add_full_name_code(ngx_http_script_compile_t *sc)
{
    ngx_http_script_full_name_code_t *code;

    code = ngx_http_script_add_code(*sc->lengths,
                                    sizeof(ngx_http_script_full_name_code_t),
                                    ((void*)0));
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    code->code = (ngx_http_script_code_pt) (void *)
                                            ngx_http_script_full_name_len_code;
    code->conf_prefix = sc->conf_prefix;

    code = ngx_http_script_add_code(*sc->values,
                                    sizeof(ngx_http_script_full_name_code_t),
                                    &sc->main);
    if (code == ((void*)0)) {
        return NGX_ERROR;
    }

    code->code = ngx_http_script_full_name_code;
    code->conf_prefix = sc->conf_prefix;

    return NGX_OK;
}
