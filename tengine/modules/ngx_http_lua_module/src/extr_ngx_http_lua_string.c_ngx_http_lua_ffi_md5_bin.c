
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_md5_t ;


 int ngx_md5_final (int *,int *) ;
 int ngx_md5_init (int *) ;
 int ngx_md5_update (int *,int const*,size_t) ;

void
ngx_http_lua_ffi_md5_bin(const u_char *src, size_t len, u_char *dst)
{
    ngx_md5_t md5;

    ngx_md5_init(&md5);
    ngx_md5_update(&md5, src, len);
    ngx_md5_final(dst, &md5);
}
