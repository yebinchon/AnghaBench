
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int p_timeout ;
typedef TYPE_2__* p_buffer ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;
struct TYPE_6__ {TYPE_1__* io; int tm; } ;
struct TYPE_5__ {int ctx; int (* error ) (int ,int) ;} ;


 int IO_DONE ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_optnumber (int *,int,int) ;
 int lua_gettop (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,scalar_t__) ;
 int lua_pushstring (int *,int ) ;
 int sendraw (TYPE_2__*,char const*,long,size_t*) ;
 int stub1 (int ,int) ;
 scalar_t__ timeout_getstart (int ) ;
 scalar_t__ timeout_gettime () ;
 int timeout_markstart (int ) ;

int buffer_meth_send(lua_State *L, p_buffer buf) {
    int top = lua_gettop(L);
    int err = IO_DONE;
    size_t size = 0, sent = 0;
    const char *data = luaL_checklstring(L, 2, &size);
    long start = (long) luaL_optnumber(L, 3, 1);
    long end = (long) luaL_optnumber(L, 4, -1);



    if (start < 0) start = (long) (size+start+1);
    if (end < 0) end = (long) (size+end+1);
    if (start < 1) start = (long) 1;
    if (end > (long) size) end = (long) size;
    if (start <= end) err = sendraw(buf, data+start-1, end-start+1, &sent);

    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, buf->io->error(buf->io->ctx, err));
        lua_pushnumber(L, (lua_Number) (sent+start-1));
    } else {
        lua_pushnumber(L, (lua_Number) (sent+start-1));
        lua_pushnil(L);
        lua_pushnil(L);
    }




    return lua_gettop(L) - top;
}
