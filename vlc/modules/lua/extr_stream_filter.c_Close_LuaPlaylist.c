
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlclua_playlist {struct vlclua_playlist* access; int * L; struct vlclua_playlist* filename; } ;
struct TYPE_2__ {struct vlclua_playlist* p_sys; } ;
typedef TYPE_1__ stream_t ;


 int assert (int ) ;
 int free (struct vlclua_playlist*) ;
 int lua_close (int *) ;

void Close_LuaPlaylist(vlc_object_t *obj)
{
    stream_t *s = (stream_t *)obj;
    struct vlclua_playlist *sys = s->p_sys;

    free(sys->filename);
    assert(sys->L != ((void*)0));
    lua_close(sys->L);
    free(sys->access);
    free(sys);
}
