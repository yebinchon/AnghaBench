
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int name; } ;
typedef TYPE_1__ opt_t ;
typedef int libvlc_media_player_t ;




 int find_sub_source_by_name (int *,char const*) ;
 int libvlc_printerr (char*,char const*,char*) ;
 int lroundf (int ) ;
 int var_GetFloat (int *,int ) ;
 int var_GetInteger (int *,int ) ;

__attribute__((used)) static int
get_int( libvlc_media_player_t *p_mi, const char *restrict name,
         const opt_t *restrict opt )
{
    if( !opt ) return 0;

    switch( opt->type )
    {
        case 0:
        {
            bool b_enabled = find_sub_source_by_name( p_mi, name );
            return b_enabled ? 1 : 0;
        }
    case 128:
        return var_GetInteger(p_mi, opt->name);
    case 129:
        return lroundf(var_GetFloat(p_mi, opt->name));
    default:
        libvlc_printerr( "Invalid argument to %s in %s", name, "get int" );
        return 0;
    }
}
