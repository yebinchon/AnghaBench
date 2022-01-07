
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_str_t ;
typedef int ngx_pool_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_tfs_deserialize_string (int **,int *,int *) ;
 int ngx_memzero (int *,int) ;
 int * ngx_pcalloc (int *,int) ;
 int * ngx_prealloc (int *,int *,int,int) ;

ngx_int_t
ngx_http_tfs_deserialize_vstring(u_char **p, ngx_pool_t *pool,
    uint32_t *count, ngx_str_t **string)
{
    uint32_t new_count, i;
    ngx_int_t rc;


    new_count = *((uint32_t *)*p);
    (*p) += sizeof(uint32_t);


    if (new_count > 0) {
        if (*string == ((void*)0)) {
            *string = ngx_pcalloc(pool, sizeof(ngx_str_t) * new_count);
            if (*string == ((void*)0)) {
                return NGX_ERROR;
            }

        } else if (new_count > *count) {
            *string = ngx_prealloc(pool, *string, sizeof(ngx_str_t) * (*count),
                                   sizeof(ngx_str_t) * new_count);
            if (*string == ((void*)0)) {
                return NGX_ERROR;
            }
            ngx_memzero(*string, sizeof(ngx_str_t) * new_count);
        }
        for (i = 0; i < new_count; i++) {
            rc = ngx_http_tfs_deserialize_string(p, pool, (*string) + i);
            if (rc == NGX_ERROR) {
                return NGX_ERROR;
            }
        }
    }
    *count = new_count;

    return NGX_OK;
}
