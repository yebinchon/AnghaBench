
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnumber (int *,long) ;
 long vlc_lrand48 () ;

__attribute__((used)) static int vlclua_rand_number( lua_State *L )
{
    long rand = vlc_lrand48();
    lua_pushnumber( L, rand );
    return 1;
}
