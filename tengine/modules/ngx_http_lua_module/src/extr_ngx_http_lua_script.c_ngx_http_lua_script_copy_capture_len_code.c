
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_uint_t ;
struct TYPE_4__ {int ncaptures; int* captures; scalar_t__ ip; } ;
typedef TYPE_1__ ngx_http_lua_script_engine_t ;
struct TYPE_5__ {int n; } ;
typedef TYPE_2__ ngx_http_lua_script_capture_code_t ;



__attribute__((used)) static size_t
ngx_http_lua_script_copy_capture_len_code(ngx_http_lua_script_engine_t *e)
{
    int *cap;
    ngx_uint_t n;
    ngx_http_lua_script_capture_code_t *code;

    code = (ngx_http_lua_script_capture_code_t *) e->ip;

    e->ip += sizeof(ngx_http_lua_script_capture_code_t);

    n = code->n;

    if (n < e->ncaptures) {
        cap = e->captures;
        return cap[n + 1] - cap[n];
    }

    return 0;
}
