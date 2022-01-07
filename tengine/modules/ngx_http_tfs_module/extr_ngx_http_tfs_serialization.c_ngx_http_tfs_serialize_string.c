
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_memcpy (int *,int ,scalar_t__) ;

ngx_int_t
ngx_http_tfs_serialize_string(u_char **p,
    ngx_str_t *string)
{
    if (p == ((void*)0) || *p == ((void*)0) || string == ((void*)0)) {
        return NGX_ERROR;
    }

    if (string->len == 0) {
        *((uint32_t *)*p) = 0;

    } else {
        *((uint32_t *)*p) = string->len + 1;
    }
    *p += sizeof(uint32_t);

    if (string->len > 0) {
        ngx_memcpy(*p, string->data, string->len);
        *p += string->len + 1;
    }

    return NGX_OK;
}
