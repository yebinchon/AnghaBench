
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int FILE ;


 int LUA_NUMBER_SCAN ;
 int fscanf (int *,int ,int *) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int vlclua_io_file_read_number( lua_State *L, FILE* p_file )
{
    lua_Number num;
    if ( fscanf( p_file, LUA_NUMBER_SCAN, &num ) != 1 )
        return 0;
    lua_pushnumber( L, num );
    return 1;
}
