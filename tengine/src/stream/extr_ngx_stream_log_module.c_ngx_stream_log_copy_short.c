
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int ngx_stream_session_t ;
struct TYPE_3__ {size_t len; uintptr_t data; } ;
typedef TYPE_1__ ngx_stream_log_op_t ;



__attribute__((used)) static u_char *
ngx_stream_log_copy_short(ngx_stream_session_t *s, u_char *buf,
    ngx_stream_log_op_t *op)
{
    size_t len;
    uintptr_t data;

    len = op->len;
    data = op->data;

    while (len--) {
        *buf++ = (u_char) (data & 0xff);
        data >>= 8;
    }

    return buf;
}
