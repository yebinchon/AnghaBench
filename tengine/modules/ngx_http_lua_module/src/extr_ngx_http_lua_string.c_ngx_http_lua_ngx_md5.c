
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_md5_t ;
typedef int md5_buf ;
typedef int lua_State ;
typedef int hex_buf ;


 int MD5_DIGEST_LENGTH ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;
 int ngx_hex_dump (int *,int *,int) ;
 int ngx_md5_final (int *,int *) ;
 int ngx_md5_init (int *) ;
 int ngx_md5_update (int *,int *,size_t) ;

__attribute__((used)) static int
ngx_http_lua_ngx_md5(lua_State *L)
{
    u_char *src;
    size_t slen;

    ngx_md5_t md5;
    u_char md5_buf[MD5_DIGEST_LENGTH];
    u_char hex_buf[2 * sizeof(md5_buf)];

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting one argument");
    }

    if (lua_isnil(L, 1)) {
        src = (u_char *) "";
        slen = 0;

    } else {
        src = (u_char *) luaL_checklstring(L, 1, &slen);
    }

    ngx_md5_init(&md5);
    ngx_md5_update(&md5, src, slen);
    ngx_md5_final(md5_buf, &md5);

    ngx_hex_dump(hex_buf, md5_buf, sizeof(md5_buf));

    lua_pushlstring(L, (char *) hex_buf, sizeof(hex_buf));

    return 1;
}
