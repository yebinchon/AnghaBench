
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int luabatch_context_t ;
typedef int lua_State ;
struct TYPE_2__ {int p_item; } ;
typedef TYPE_1__ demux_meta_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int const*) ;
 int * init (int *,int ,char const*) ;
 int lua_close (int *) ;
 int run (int *,char const*,int *,char*,int *) ;

__attribute__((used)) static int read_meta( vlc_object_t *p_this, const char * psz_filename,
                      const luabatch_context_t *p_context )
{

    demux_meta_t *p_demux_meta = (demux_meta_t *)p_this;
    VLC_UNUSED( p_context );

    lua_State *L = init( p_this, p_demux_meta->p_item, psz_filename );
    if( !L )
        return VLC_EGENERIC;

    int i_ret = run(p_this, psz_filename, L, "read_meta", ((void*)0));
    lua_close( L );


    return i_ret == VLC_SUCCESS ? VLC_EGENERIC : i_ret;
}
