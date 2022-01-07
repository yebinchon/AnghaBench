
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int vlclua_input_add_subtitle (int *,int) ;

__attribute__((used)) static int vlclua_input_add_subtitle_path( lua_State *L )
{
    return vlclua_input_add_subtitle( L, 1 );
}
