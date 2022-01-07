
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int NGX_UNESCAPE_URI_COMPONENT ;
 int ngx_http_lua_unescape_uri (int **,int **,size_t,int ) ;

size_t
ngx_http_lua_ffi_unescape_uri(const u_char *src, size_t len, u_char *dst)
{
    u_char *p = dst;

    ngx_http_lua_unescape_uri(&p, (u_char **) &src, len,
                              NGX_UNESCAPE_URI_COMPONENT);
    return p - dst;
}
