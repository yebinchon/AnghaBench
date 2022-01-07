
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int name; } ;
typedef TYPE_1__ opt_t ;
typedef int libvlc_media_player_t ;


 scalar_t__ VLC_VAR_FLOAT ;
 int libvlc_printerr (char*,char const*,char*) ;
 float var_GetFloat (int *,int ) ;

__attribute__((used)) static float
get_float( libvlc_media_player_t *p_mi, const char *restrict name,
            const opt_t *restrict opt )
{
    if( !opt ) return 0.0;

    if( opt->type != VLC_VAR_FLOAT )
    {
        libvlc_printerr( "Invalid argument to %s in %s", name, "get float" );
        return 0.0;
    }

    return var_GetFloat( p_mi, opt->name );
}
