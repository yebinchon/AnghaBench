
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
typedef TYPE_1__ stream_t ;
typedef int lua_State ;


 int free (char*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* vlc_stream_ReadLine (int ) ;
 scalar_t__ vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_demux_readline( lua_State *L )
{
    stream_t *s = (stream_t *)vlclua_get_this(L);
    char *line = vlc_stream_ReadLine(s->s);

    if (line != ((void*)0))
    {
        lua_pushstring(L, line);
        free(line);
    }
    else
        lua_pushnil( L );

    return 1;
}
