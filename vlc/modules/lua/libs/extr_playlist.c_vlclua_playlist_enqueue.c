
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int vlclua_playlist_add_common (int *,int) ;

__attribute__((used)) static int vlclua_playlist_enqueue(lua_State *L)
{
    return vlclua_playlist_add_common(L, 0);
}
