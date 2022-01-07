
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int GetConsole (int *) ;
 int MAX_LINE_LENGTH ;
 int ReadWin32 (int ,unsigned char*,int*) ;
 int lua_pushlstring (int *,char*,int) ;

__attribute__((used)) static int vlclua_console_read( lua_State *L )
{
    char psz_buffer[MAX_LINE_LENGTH+1];
    int i_size = 0;
    ReadWin32( GetConsole( L ), (unsigned char*)psz_buffer, &i_size );
    lua_pushlstring( L, psz_buffer, i_size );

    return 1;
}
