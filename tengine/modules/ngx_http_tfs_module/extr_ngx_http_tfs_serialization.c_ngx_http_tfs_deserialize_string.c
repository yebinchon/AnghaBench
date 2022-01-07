
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_pool_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_memcpy (int *,int *,scalar_t__) ;
 int * ngx_pcalloc (int *,scalar_t__) ;

ngx_int_t
ngx_http_tfs_deserialize_string(u_char **p, ngx_pool_t *pool,
    ngx_str_t *string)
{
    if (p == ((void*)0) || *p == ((void*)0) || pool == ((void*)0) || string == ((void*)0)) {
        return NGX_ERROR;
    }

    string->len = *((uint32_t *)*p);
    (*p) += sizeof(uint32_t);

    if (string->len > 0) {

        string->len -= 1;
        string->data = ngx_pcalloc(pool, string->len);
        if (string->data == ((void*)0)) {
            return NGX_ERROR;
        }
        ngx_memcpy(string->data, (*p), string->len);
        (*p) += string->len + 1;
    }

    return NGX_OK;
}
