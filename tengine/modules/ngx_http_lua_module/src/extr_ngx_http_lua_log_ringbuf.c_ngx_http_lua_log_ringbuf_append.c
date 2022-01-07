
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long double msec; scalar_t__ sec; } ;
typedef TYPE_1__ ngx_time_t ;
struct TYPE_7__ {scalar_t__ tail; scalar_t__ sentinel; int count; } ;
typedef TYPE_2__ ngx_http_lua_log_ringbuf_t ;
struct TYPE_8__ {int len; int log_level; scalar_t__ time; } ;
typedef TYPE_3__ ngx_http_lua_log_ringbuf_header_t ;


 scalar_t__ HEADER_LEN ;
 int ngx_memcpy (scalar_t__,void*,int) ;
 TYPE_1__* ngx_timeofday () ;

__attribute__((used)) static void
ngx_http_lua_log_ringbuf_append(ngx_http_lua_log_ringbuf_t *rb,
    int log_level, void *buf, int n)
{
    ngx_http_lua_log_ringbuf_header_t *head;
    ngx_time_t *tp;

    head = (ngx_http_lua_log_ringbuf_header_t *) rb->tail;
    head->len = n;
    head->log_level = log_level;

    tp = ngx_timeofday();
    head->time = tp->sec + tp->msec / 1000.0L;

    rb->tail += HEADER_LEN;
    ngx_memcpy(rb->tail, buf, n);
    rb->tail += n;
    rb->count++;

    if (rb->tail > rb->sentinel) {
        rb->sentinel = rb->tail;
    }

    return;
}
