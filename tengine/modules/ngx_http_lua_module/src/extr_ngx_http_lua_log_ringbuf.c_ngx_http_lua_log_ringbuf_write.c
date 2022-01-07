
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {size_t size; size_t data; size_t tail; scalar_t__ head; scalar_t__ sentinel; scalar_t__ count; } ;
typedef TYPE_1__ ngx_http_lua_log_ringbuf_t ;


 size_t HEADER_LEN ;
 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_http_lua_log_ringbuf_append (TYPE_1__*,int,void*,size_t) ;
 size_t ngx_http_lua_log_ringbuf_free_spaces (TYPE_1__*) ;
 int ngx_http_lua_log_ringbuf_throw_away (TYPE_1__*) ;

ngx_int_t
ngx_http_lua_log_ringbuf_write(ngx_http_lua_log_ringbuf_t *rb, int log_level,
    void *buf, size_t n)
{
    if (n + HEADER_LEN > rb->size) {
        return NGX_ERROR;
    }

    if (ngx_http_lua_log_ringbuf_free_spaces(rb) < n + HEADER_LEN) {

        if ((size_t)(rb->data + rb->size - rb->tail) < n + HEADER_LEN) {

            while (rb->head >= rb->tail && rb->count) {


                ngx_http_lua_log_ringbuf_throw_away(rb);
            }

            rb->sentinel = rb->tail;
            rb->tail = rb->data;
        }

        while (ngx_http_lua_log_ringbuf_free_spaces(rb) < n + HEADER_LEN) {
            ngx_http_lua_log_ringbuf_throw_away(rb);
        }
    }

    ngx_http_lua_log_ringbuf_append(rb, log_level, buf, n);

    return NGX_OK;
}
