
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int NGX_ESCAPE_URI_COMPONENT ;
 int ngx_http_lua_escape_uri (int *,int *,size_t,int ) ;

size_t
ngx_http_lua_ffi_uri_escaped_length(const u_char *src, size_t len)
{
    return len + 2 * ngx_http_lua_escape_uri(((void*)0), (u_char *) src, len,
                                             NGX_ESCAPE_URI_COMPONENT);
}
