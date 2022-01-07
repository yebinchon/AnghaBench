
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sent_begin; size_t size; int sent_end; char const* s; } ;
typedef TYPE_1__ ngx_http_lua_clfactory_buffer_ctx_t ;
typedef int lua_State ;


 char const* CLFACTORY_BEGIN_CODE ;
 size_t CLFACTORY_BEGIN_SIZE ;
 char const* CLFACTORY_END_CODE ;
 size_t CLFACTORY_END_SIZE ;

__attribute__((used)) static const char *
ngx_http_lua_clfactory_getS(lua_State *L, void *ud, size_t *size)
{
    ngx_http_lua_clfactory_buffer_ctx_t *ls = ud;


    if (ls->sent_begin == 0) {
        ls->sent_begin = 1;
        *size = CLFACTORY_BEGIN_SIZE;

        return CLFACTORY_BEGIN_CODE;
    }


    if (ls->size == 0) {

        if (ls->sent_end == 0) {
            ls->sent_end = 1;
            *size = CLFACTORY_END_SIZE;
            return CLFACTORY_END_CODE;
        }


        return ((void*)0);
    }

    *size = ls->size;
    ls->size = 0;

    return ls->s;
}
