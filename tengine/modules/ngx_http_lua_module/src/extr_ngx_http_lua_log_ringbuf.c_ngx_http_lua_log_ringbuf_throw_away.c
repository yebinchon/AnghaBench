
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ count; scalar_t__ head; } ;
typedef TYPE_1__ ngx_http_lua_log_ringbuf_t ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_2__ ngx_http_lua_log_ringbuf_header_t ;


 scalar_t__ HEADER_LEN ;
 scalar_t__ ngx_http_lua_log_ringbuf_next_header (TYPE_1__*) ;
 int ngx_http_lua_log_ringbuf_reset (TYPE_1__*) ;

__attribute__((used)) static void
ngx_http_lua_log_ringbuf_throw_away(ngx_http_lua_log_ringbuf_t *rb)
{
    ngx_http_lua_log_ringbuf_header_t *head;

    if (rb->count == 0) {
        return;
    }

    head = (ngx_http_lua_log_ringbuf_header_t *) rb->head;

    rb->head += HEADER_LEN + head->len;
    rb->count--;

    if (rb->count == 0) {
        ngx_http_lua_log_ringbuf_reset(rb);
    }

    rb->head = ngx_http_lua_log_ringbuf_next_header(rb);

    return;
}
