
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_bool; int i_int; int f_float; int psz_string; } ;
typedef TYPE_1__ vlc_value_t ;
typedef int vlc_object_t ;


 int VLC_ENOOBJ ;
 scalar_t__ VLC_SUCCESS ;


 int VLC_VAR_CLASS ;



 int config_GetFloat (char const*) ;
 int config_GetInt (char const*) ;
 int config_GetPsz (char const*) ;
 int strdup (char*) ;
 scalar_t__ var_GetChecked (int *,char const*,int,TYPE_1__*) ;
 int vlc_assert_unreachable () ;
 int * vlc_object_parent (int *) ;

int var_Inherit( vlc_object_t *p_this, const char *psz_name, int i_type,
                 vlc_value_t *p_val )
{
    i_type &= VLC_VAR_CLASS;
    for (vlc_object_t *obj = p_this; obj != ((void*)0); obj = vlc_object_parent(obj))
    {
        if( var_GetChecked( obj, psz_name, i_type, p_val ) == VLC_SUCCESS )
            return VLC_SUCCESS;
    }


    switch( i_type & VLC_VAR_CLASS )
    {
        case 128:
            p_val->psz_string = config_GetPsz( psz_name );
            if( !p_val->psz_string ) p_val->psz_string = strdup("");
            break;
        case 130:
            p_val->f_float = config_GetFloat( psz_name );
            break;
        case 129:
            p_val->i_int = config_GetInt( psz_name );
            break;
        case 131:
            p_val->b_bool = config_GetInt( psz_name ) > 0;
            break;
        default:
            vlc_assert_unreachable();
        case 132:
            return VLC_ENOOBJ;
    }
    return VLC_SUCCESS;
}
