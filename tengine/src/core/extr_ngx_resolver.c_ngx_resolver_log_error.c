
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int server; } ;
typedef TYPE_1__ ngx_resolver_connection_t ;
struct TYPE_5__ {TYPE_1__* data; int * action; } ;
typedef TYPE_2__ ngx_log_t ;


 int * ngx_snprintf (int *,size_t,char*,int *) ;

__attribute__((used)) static u_char *
ngx_resolver_log_error(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char *p;
    ngx_resolver_connection_t *rec;

    p = buf;

    if (log->action) {
        p = ngx_snprintf(buf, len, " while %s", log->action);
        len -= p - buf;
    }

    rec = log->data;

    if (rec) {
        p = ngx_snprintf(p, len, ", resolver: %V", &rec->server);
    }

    return p;
}
