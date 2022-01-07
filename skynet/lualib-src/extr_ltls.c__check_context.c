
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {scalar_t__ is_close; } ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static struct tls_context *
_check_context(lua_State* L, int idx) {
    struct tls_context* tls_p = (struct tls_context*)lua_touserdata(L, idx);
    if(!tls_p) {
        luaL_error(L, "need tls context");
    }
    if(tls_p->is_close) {
        luaL_error(L, "context is closed");
    }
    return tls_p;
}
