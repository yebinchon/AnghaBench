
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int p_socket ;
typedef int lua_State ;


 int auxiliar_checkboolean (int *,int) ;
 int opt_set (int *,int ,int,int,char*,int) ;

__attribute__((used)) static int opt_setboolean(lua_State *L, p_socket ps, int level, int name)
{
    int val = auxiliar_checkboolean(L, 3);
    return opt_set(L, ps, level, name, (char *) &val, sizeof(val));
}
