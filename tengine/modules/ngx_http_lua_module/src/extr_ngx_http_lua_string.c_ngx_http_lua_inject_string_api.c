
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int ngx_http_lua_ngx_crc32_long ;
 int ngx_http_lua_ngx_crc32_short ;
 int ngx_http_lua_ngx_decode_args ;
 int ngx_http_lua_ngx_decode_base64 ;
 int ngx_http_lua_ngx_encode_args ;
 int ngx_http_lua_ngx_encode_base64 ;
 int ngx_http_lua_ngx_escape_uri ;
 int ngx_http_lua_ngx_hmac_sha1 ;
 int ngx_http_lua_ngx_md5 ;
 int ngx_http_lua_ngx_md5_bin ;
 int ngx_http_lua_ngx_quote_sql_str ;
 int ngx_http_lua_ngx_sha1_bin ;
 int ngx_http_lua_ngx_unescape_uri ;

void
ngx_http_lua_inject_string_api(lua_State *L)
{
    lua_pushcfunction(L, ngx_http_lua_ngx_escape_uri);
    lua_setfield(L, -2, "escape_uri");

    lua_pushcfunction(L, ngx_http_lua_ngx_unescape_uri);
    lua_setfield(L, -2, "unescape_uri");

    lua_pushcfunction(L, ngx_http_lua_ngx_encode_args);
    lua_setfield(L, -2, "encode_args");

    lua_pushcfunction(L, ngx_http_lua_ngx_decode_args);
    lua_setfield(L, -2, "decode_args");

    lua_pushcfunction(L, ngx_http_lua_ngx_quote_sql_str);
    lua_setfield(L, -2, "quote_sql_str");

    lua_pushcfunction(L, ngx_http_lua_ngx_decode_base64);
    lua_setfield(L, -2, "decode_base64");

    lua_pushcfunction(L, ngx_http_lua_ngx_encode_base64);
    lua_setfield(L, -2, "encode_base64");

    lua_pushcfunction(L, ngx_http_lua_ngx_md5_bin);
    lua_setfield(L, -2, "md5_bin");

    lua_pushcfunction(L, ngx_http_lua_ngx_md5);
    lua_setfield(L, -2, "md5");






    lua_pushcfunction(L, ngx_http_lua_ngx_crc32_short);
    lua_setfield(L, -2, "crc32_short");

    lua_pushcfunction(L, ngx_http_lua_ngx_crc32_long);
    lua_setfield(L, -2, "crc32_long");





}
