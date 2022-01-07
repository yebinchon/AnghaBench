
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int p_socket ;
typedef int lua_State ;


 int lua_pushboolean (int *,int) ;
 int opt_get (int *,int ,int,int,char*,int*) ;

__attribute__((used)) static int opt_getboolean(lua_State *L, p_socket ps, int level, int name)
{
    int val = 0;
    int len = sizeof(val);
    int err = opt_get(L, ps, level, name, (char *) &val, &len);
    if (err)
        return err;
    lua_pushboolean(L, val);
    return 1;
}
