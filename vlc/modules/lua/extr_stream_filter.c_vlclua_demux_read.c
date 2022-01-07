
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int free (char*) ;
 int luaL_checkinteger (int *,int) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 char* malloc (int) ;
 int vlc_stream_Read (int ,char*,int) ;
 scalar_t__ vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_demux_read( lua_State *L )
{
    stream_t *s = (stream_t *)vlclua_get_this(L);
    int n = luaL_checkinteger( L, 1 );
    char *buf = malloc(n);

    if (buf != ((void*)0))
    {
        ssize_t val = vlc_stream_Read(s->s, buf, n);
        if (val > 0)
            lua_pushlstring(L, buf, val);
        else
            lua_pushnil( L );
        free(buf);
    }
    else
        lua_pushnil( L );

    return 1;
}
