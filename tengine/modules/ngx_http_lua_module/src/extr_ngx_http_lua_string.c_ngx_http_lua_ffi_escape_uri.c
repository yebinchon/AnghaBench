
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int NGX_ESCAPE_URI_COMPONENT ;
 int ngx_http_lua_escape_uri (int *,int *,size_t,int ) ;

void
ngx_http_lua_ffi_escape_uri(const u_char *src, size_t len, u_char *dst)
{
    ngx_http_lua_escape_uri(dst, (u_char *) src, len, NGX_ESCAPE_URI_COMPONENT);
}
