
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int * pos; int log; scalar_t__ ip; int skip; } ;
typedef TYPE_1__ ngx_http_lua_script_engine_t ;
struct TYPE_5__ {int len; } ;
typedef TYPE_2__ ngx_http_lua_script_copy_code_t ;


 int NGX_LOG_DEBUG_HTTP ;
 int * ngx_copy (int *,scalar_t__,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int *) ;

__attribute__((used)) static void
ngx_http_lua_script_copy_code(ngx_http_lua_script_engine_t *e)
{
    u_char *p;
    ngx_http_lua_script_copy_code_t *code;

    code = (ngx_http_lua_script_copy_code_t *) e->ip;

    p = e->pos;

    if (!e->skip) {
        e->pos = ngx_copy(p, e->ip + sizeof(ngx_http_lua_script_copy_code_t),
                          code->len);
    }

    e->ip += sizeof(ngx_http_lua_script_copy_code_t)
          + ((code->len + sizeof(uintptr_t) - 1) & ~(sizeof(uintptr_t) - 1));

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, e->log, 0,
                   "lua script copy: \"%*s\"", e->pos - p, p);
}
