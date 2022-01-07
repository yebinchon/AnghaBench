
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
typedef size_t ngx_uint_t ;
struct TYPE_5__ {size_t len; int* data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;


 int* ngx_pcalloc (int ,size_t) ;

__attribute__((used)) static void
ngx_http_session_sticky_tmtoa(ngx_http_request_t *r, ngx_str_t *str, time_t t)
{
    time_t temp;
    ngx_uint_t len;

    len = 0;
    temp = t;
    while (temp) {
        len++;
        temp /= 10;
    }

    str->len = len;
    str->data = ngx_pcalloc(r->pool, len);
    if (str->data == ((void*)0)) {
        return;
    }

    while (t) {
        str->data[--len] = t % 10 + '0';
        t /= 10;
    }
}
