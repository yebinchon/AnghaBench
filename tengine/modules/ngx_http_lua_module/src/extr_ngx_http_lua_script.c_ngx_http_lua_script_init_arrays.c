
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
typedef int ngx_http_lua_script_copy_code_t ;
struct TYPE_3__ {int variables; int ** values; int pool; int ** lengths; } ;
typedef TYPE_1__ ngx_http_lua_script_compile_t ;
typedef int ngx_http_lua_script_capture_code_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 void* ngx_array_create (int ,int,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_script_init_arrays(ngx_http_lua_script_compile_t *sc)
{
    ngx_uint_t n;

    if (*sc->lengths == ((void*)0)) {
        n = sc->variables * (2 * sizeof(ngx_http_lua_script_copy_code_t)
                             + sizeof(ngx_http_lua_script_capture_code_t))
            + sizeof(uintptr_t);

        *sc->lengths = ngx_array_create(sc->pool, n, 1);
        if (*sc->lengths == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    if (*sc->values == ((void*)0)) {
        n = (sc->variables * (2 * sizeof(ngx_http_lua_script_copy_code_t)
                              + sizeof(ngx_http_lua_script_capture_code_t))
                + sizeof(uintptr_t)
                + sizeof(uintptr_t) - 1)
            & ~(sizeof(uintptr_t) - 1);

        *sc->values = ngx_array_create(sc->pool, n, 1);
        if (*sc->values == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    sc->variables = 0;

    return NGX_OK;
}
