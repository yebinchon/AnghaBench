
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_pool_t ;
typedef int ngx_array_t ;


 int * ngx_array_create (int *,int,int) ;
 void* ngx_array_push_n (int *,size_t) ;

void *
ngx_http_script_start_code(ngx_pool_t *pool, ngx_array_t **codes, size_t size)
{
    if (*codes == ((void*)0)) {
        *codes = ngx_array_create(pool, 256, 1);
        if (*codes == ((void*)0)) {
            return ((void*)0);
        }
    }

    return ngx_array_push_n(*codes, size);
}
