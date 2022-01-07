
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int p_timeout ;
typedef TYPE_2__* p_buffer ;
typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_8__ {TYPE_1__* io; int tm; } ;
struct TYPE_7__ {int ctx; int (* error ) (int ,int) ;} ;


 int IO_DONE ;
 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_buffinit (int *,int *) ;
 char* luaL_optlstring (int *,int,char*,size_t*) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaL_pushresult (int *) ;
 int lua_gettop (int *) ;
 int lua_isnumber (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,scalar_t__) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int) ;
 double lua_tonumber (int *,int) ;
 int recvall (TYPE_2__*,int *) ;
 int recvline (TYPE_2__*,int *) ;
 int recvraw (TYPE_2__*,size_t,int *) ;
 int stub1 (int ,int) ;
 scalar_t__ timeout_getstart (int ) ;
 scalar_t__ timeout_gettime () ;
 int timeout_markstart (int ) ;

int buffer_meth_receive(lua_State *L, p_buffer buf) {
    int err = IO_DONE, top = lua_gettop(L);
    luaL_Buffer b;
    size_t size;
    const char *part = luaL_optlstring(L, 3, "", &size);





    luaL_buffinit(L, &b);
    luaL_addlstring(&b, part, size);

    if (!lua_isnumber(L, 2)) {
        const char *p= luaL_optstring(L, 2, "*l");
        if (p[0] == '*' && p[1] == 'l') err = recvline(buf, &b);
        else if (p[0] == '*' && p[1] == 'a') err = recvall(buf, &b);
        else luaL_argcheck(L, 0, 2, "invalid receive pattern");


    } else {
        double n = lua_tonumber(L, 2);
        size_t wanted = (size_t) n;
        luaL_argcheck(L, n >= 0, 2, "invalid receive pattern");
        if (size == 0 || wanted > size)
            err = recvraw(buf, wanted-size, &b);
    }

    if (err != IO_DONE) {


        luaL_pushresult(&b);
        lua_pushstring(L, buf->io->error(buf->io->ctx, err));
        lua_pushvalue(L, -2);
        lua_pushnil(L);
        lua_replace(L, -4);
    } else {
        luaL_pushresult(&b);
        lua_pushnil(L);
        lua_pushnil(L);
    }




    return lua_gettop(L) - top;
}
