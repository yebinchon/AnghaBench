
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_3__ {size_t len; char* data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_http_request_t ;


 char CR ;
 char LF ;
 int NGX_ERROR ;
 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_grpc_validate_header_value(ngx_http_request_t *r, ngx_str_t *s)
{
    u_char ch;
    ngx_uint_t i;

    for (i = 0; i < s->len; i++) {
        ch = s->data[i];

        if (ch == '\0' || ch == CR || ch == LF) {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
