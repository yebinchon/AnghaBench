
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ head; scalar_t__ data; scalar_t__ sentinel; } ;
typedef TYPE_1__ ngx_http_lua_log_ringbuf_t ;


 scalar_t__ HEADER_LEN ;

__attribute__((used)) static void *
ngx_http_lua_log_ringbuf_next_header(ngx_http_lua_log_ringbuf_t *rb)
{

    if (rb->size - (rb->head - rb->data) < HEADER_LEN)
    {
        return rb->data;
    }


    if (rb->head >= rb->sentinel) {
        return rb->data;
    }

    return rb->head;
}
