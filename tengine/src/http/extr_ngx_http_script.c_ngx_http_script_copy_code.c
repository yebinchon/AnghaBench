
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int * pos; TYPE_2__* request; scalar_t__ ip; int skip; } ;
typedef TYPE_3__ ngx_http_script_engine_t ;
struct TYPE_9__ {int len; } ;
typedef TYPE_4__ ngx_http_script_copy_code_t ;
struct TYPE_7__ {TYPE_1__* connection; } ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int * ngx_copy (int *,scalar_t__,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int *) ;

void
ngx_http_script_copy_code(ngx_http_script_engine_t *e)
{
    u_char *p;
    ngx_http_script_copy_code_t *code;

    code = (ngx_http_script_copy_code_t *) e->ip;

    p = e->pos;

    if (!e->skip) {
        e->pos = ngx_copy(p, e->ip + sizeof(ngx_http_script_copy_code_t),
                          code->len);
    }

    e->ip += sizeof(ngx_http_script_copy_code_t)
          + ((code->len + sizeof(uintptr_t) - 1) & ~(sizeof(uintptr_t) - 1));

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script copy: \"%*s\"", e->pos - p, p);
}
