
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {TYPE_4__* data; TYPE_2__* action; } ;
typedef TYPE_3__ ngx_log_t ;
struct TYPE_8__ {scalar_t__ len; } ;
struct TYPE_10__ {TYPE_1__* listening; TYPE_2__ addr_text; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_7__ {TYPE_2__ addr_text; } ;


 int dd (char*,TYPE_4__*) ;
 int * ngx_snprintf (int *,size_t,char*,...) ;

__attribute__((used)) static u_char *
ngx_http_lua_log_timer_error(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char *p;
    ngx_connection_t *c;

    if (log->action) {
        p = ngx_snprintf(buf, len, " while %s", log->action);
        len -= p - buf;
        buf = p;
    }

    c = log->data;

    dd("ctx = %p", c);

    p = ngx_snprintf(buf, len, ", context: ngx.timer");
    len -= p - buf;
    buf = p;

    if (c->addr_text.len) {
        p = ngx_snprintf(buf, len, ", client: %V", &c->addr_text);
        len -= p - buf;
        buf = p;
    }

    if (c && c->listening && c->listening->addr_text.len) {
        p = ngx_snprintf(buf, len, ", server: %V", &c->listening->addr_text);

        buf = p;
    }

    return buf;
}
