
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_6__ {int psz_string; int i_int; } ;
typedef TYPE_1__ vlc_value_t ;
struct TYPE_7__ {int type; char* name; } ;
typedef TYPE_2__ opt_t ;
typedef int libvlc_media_player_t ;


 int ** GetVouts (int *,size_t*) ;
 int VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;



 int free (int ) ;
 int get_filter_str (int ,char*,int ,char const**,int *) ;
 int libvlc_printerr (char*,char const*) ;
 int var_SetChecked (int *,char const*,int,TYPE_1__) ;
 int var_TriggerCallback (int *,char*) ;
 int vout_Release (int *) ;

__attribute__((used)) static void
set_value( libvlc_media_player_t *p_mi, const char *restrict name,
           const opt_t *restrict opt, unsigned i_expected_type,
           const vlc_value_t *val, bool b_sub_source )
{
    if( !opt ) return;

    int i_type = opt->type;
    vlc_value_t new_val = *val;
    const char *psz_opt_name = opt->name;
    switch( i_type )
    {
        case 0:
        {
            int i_ret = get_filter_str( VLC_OBJECT( p_mi ), opt->name, val->i_int,
                                        &psz_opt_name, &new_val.psz_string );
            if( i_ret != VLC_SUCCESS )
                return;
            i_type = 128;
            break;
        }
        case 129:
        case 130:
        case 128:
            if( i_expected_type != opt->type )
            {
                libvlc_printerr( "Invalid argument to %s", name );
                return;
            }
            break;
        default:
            libvlc_printerr( "Invalid argument to %s", name );
            return;
    }



    var_SetChecked( p_mi, psz_opt_name, i_type, new_val );


    size_t i_vout_count;
    vout_thread_t **pp_vouts = GetVouts( p_mi, &i_vout_count );
    for( size_t i = 0; i < i_vout_count; ++i )
    {
        var_SetChecked( pp_vouts[i], psz_opt_name, i_type, new_val );
        if( b_sub_source )
            var_TriggerCallback( pp_vouts[i], "sub-source" );
        vout_Release(pp_vouts[i]);
    }

    if( opt->type == 0 )
        free( new_val.psz_string );
}
