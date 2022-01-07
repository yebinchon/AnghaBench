
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int p_item; } ;
typedef TYPE_1__ luabatch_context_t ;
typedef int lua_State ;


 int VLC_EGENERIC ;
 int * init (int *,int ,char const*) ;
 int lua_close (int *) ;
 int run (int *,char const*,int *,char*,TYPE_1__ const*) ;

__attribute__((used)) static int fetch_meta( vlc_object_t *p_this, const char * psz_filename,
                       const luabatch_context_t *p_context )
{
    lua_State *L = init( p_this, p_context->p_item, psz_filename );
    if( !L )
        return VLC_EGENERIC;

    int ret = run(p_this, psz_filename, L, "fetch_meta", p_context);
    lua_close( L );

    return ret;
}
