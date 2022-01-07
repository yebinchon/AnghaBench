
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_3__ {size_t len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;



ngx_uint_t
ngx_stream_script_variables_count(ngx_str_t *value)
{
    ngx_uint_t i, n;

    for (n = 0, i = 0; i < value->len; i++) {
        if (value->data[i] == '$') {
            n++;
        }
    }

    return n;
}
