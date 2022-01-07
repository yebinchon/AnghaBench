
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ADD_ERRNO_VALUE (int ) ;
 int EACCES ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int lua_newtable (int *) ;
 int lua_setfield (int *,int,char*) ;

void luaopen_errno( lua_State *L )
{
    lua_newtable( L );





    lua_pushinteger( L, ENOENT ); lua_setfield( L, -2, "ENOENT" );;
    lua_pushinteger( L, EEXIST ); lua_setfield( L, -2, "EEXIST" );;
    lua_pushinteger( L, EACCES ); lua_setfield( L, -2, "EACCES" );;
    lua_pushinteger( L, EINVAL ); lua_setfield( L, -2, "EINVAL" );;



    lua_setfield( L, -2, "errno" );
}
