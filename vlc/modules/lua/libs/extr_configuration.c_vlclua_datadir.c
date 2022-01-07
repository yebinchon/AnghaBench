
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int VLC_PKG_DATA_DIR ;
 char* config_GetSysPath (int ,int *) ;
 int free (char*) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int vlclua_datadir( lua_State *L )
{
    char *psz_data = config_GetSysPath(VLC_PKG_DATA_DIR, ((void*)0));
    lua_pushstring( L, psz_data );
    free( psz_data );
    return 1;
}
