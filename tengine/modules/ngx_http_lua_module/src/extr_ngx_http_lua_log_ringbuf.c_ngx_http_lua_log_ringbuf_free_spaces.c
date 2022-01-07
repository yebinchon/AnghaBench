
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; size_t size; scalar_t__ tail; scalar_t__ head; size_t data; } ;
typedef TYPE_1__ ngx_http_lua_log_ringbuf_t ;



__attribute__((used)) static size_t
ngx_http_lua_log_ringbuf_free_spaces(ngx_http_lua_log_ringbuf_t *rb)
{
    if (rb->count == 0) {
        return rb->size;
    }

    if (rb->tail > rb->head) {
        return rb->data + rb->size - rb->tail;
    }

    return rb->head - rb->tail;
}
