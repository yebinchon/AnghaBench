
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ action; } ;
typedef TYPE_1__ ngx_log_t ;


 int * ngx_snprintf (int *,size_t,char*,...) ;

__attribute__((used)) static u_char *
ngx_http_lua_log_init_worker_error(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char *p;

    if (log->action) {
        p = ngx_snprintf(buf, len, " while %s", log->action);
        len -= p - buf;
        buf = p;
    }

    return ngx_snprintf(buf, len, ", context: init_worker_by_lua*");
}
