
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int VLC_PLAYER_WHENCE_RELATIVE ;
 int vlclua_player_seek_by_pos_ (int *,int ) ;

__attribute__((used)) static int vlclua_player_seek_by_pos_relative(lua_State *L)
{
    return vlclua_player_seek_by_pos_(L, VLC_PLAYER_WHENCE_RELATIVE);
}
