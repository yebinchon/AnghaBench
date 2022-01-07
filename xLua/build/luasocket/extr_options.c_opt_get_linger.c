
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linger {int l_linger; int l_onoff; } ;
typedef int p_socket ;
typedef int lua_State ;
typedef int li ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int opt_get (int *,int ,int ,int ,char*,int*) ;

int opt_get_linger(lua_State *L, p_socket ps)
{
    struct linger li;
    int len = sizeof(li);
    int err = opt_get(L, ps, SOL_SOCKET, SO_LINGER, (char *) &li, &len);
    if (err)
        return err;
    lua_newtable(L);
    lua_pushboolean(L, li.l_onoff);
    lua_setfield(L, -2, "on");
    lua_pushinteger(L, li.l_linger);
    lua_setfield(L, -2, "timeout");
    return 1;
}
