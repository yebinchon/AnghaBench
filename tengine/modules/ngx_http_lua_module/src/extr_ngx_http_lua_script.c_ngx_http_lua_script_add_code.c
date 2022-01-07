
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_array_t ;


 void* ngx_array_push_n (int *,size_t) ;

__attribute__((used)) static void *
ngx_http_lua_script_add_code(ngx_array_t *codes, size_t size)
{
    return ngx_array_push_n(codes, size);
}
