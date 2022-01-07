
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int var_lock; } ;
typedef TYPE_1__ vlc_object_internals_t ;
struct TYPE_6__ {int i_type; scalar_t__ choices_count; } ;
typedef TYPE_2__ variable_t ;


 TYPE_2__* Lookup (int *,char const*) ;
 int VLC_VAR_HASCHOICE ;
 int assert (int *) ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_unlock (int *) ;

int (var_Type)(vlc_object_t *p_this, const char *psz_name)
{
    variable_t *p_var;
    int i_type = 0;

    assert( p_this );

    vlc_object_internals_t *p_priv = vlc_internals( p_this );

    p_var = Lookup( p_this, psz_name );
    if( p_var != ((void*)0) )
    {
        i_type = p_var->i_type;
        if (p_var->choices_count > 0)
            i_type |= VLC_VAR_HASCHOICE;
    }
    vlc_mutex_unlock( &p_priv->var_lock );

    return i_type;
}
