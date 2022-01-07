
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushlstring (int *,char const*,int ) ;
 int lua_pushnil (int *) ;
 int vlc_stream_Peek (int ,int const**,int) ;
 scalar_t__ vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_demux_peek( lua_State *L )
{
    stream_t *s = (stream_t *)vlclua_get_this(L);
    int n = luaL_checkinteger( L, 1 );
    const uint8_t *p_peek;

    ssize_t val = vlc_stream_Peek(s->s, &p_peek, n);
    if (val > 0)
        lua_pushlstring(L, (const char *)p_peek, val);
    else
        lua_pushnil( L );
    return 1;
}
