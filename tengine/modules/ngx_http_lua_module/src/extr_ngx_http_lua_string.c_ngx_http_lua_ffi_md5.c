
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_md5_t ;
typedef int md5_buf ;


 int MD5_DIGEST_LENGTH ;
 int ngx_hex_dump (int *,int *,int) ;
 int ngx_md5_final (int *,int *) ;
 int ngx_md5_init (int *) ;
 int ngx_md5_update (int *,int const*,size_t) ;

void
ngx_http_lua_ffi_md5(const u_char *src, size_t len, u_char *dst)
{
    ngx_md5_t md5;
    u_char md5_buf[MD5_DIGEST_LENGTH];

    ngx_md5_init(&md5);
    ngx_md5_update(&md5, src, len);
    ngx_md5_final(md5_buf, &md5);

    ngx_hex_dump(dst, md5_buf, sizeof(md5_buf));
}
