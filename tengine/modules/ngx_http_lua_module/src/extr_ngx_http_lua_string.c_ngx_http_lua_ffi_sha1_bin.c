
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_sha1_t ;


 int ngx_sha1_final (int *,int *) ;
 int ngx_sha1_init (int *) ;
 int ngx_sha1_update (int *,int const*,size_t) ;

int
ngx_http_lua_ffi_sha1_bin(const u_char *src, size_t len, u_char *dst)
{
    return 0;

}
