
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_7__ {int var_lock; } ;
typedef TYPE_2__ vlc_object_internals_t ;
struct TYPE_8__ {int i_type; TYPE_1__* ops; int val; } ;
typedef TYPE_3__ variable_t ;
struct TYPE_6__ {int (* pf_dup ) (int *) ;} ;


 TYPE_3__* Lookup (int *,char const*) ;
 int VLC_ENOVAR ;
 int VLC_SUCCESS ;
 int VLC_VAR_CLASS ;
 int VLC_VAR_VOID ;
 int assert (int) ;
 int stub1 (int *) ;
 TYPE_2__* vlc_internals (int *) ;
 int vlc_mutex_unlock (int *) ;

int (var_GetChecked)(vlc_object_t *p_this, const char *psz_name,
                     int expected_type, vlc_value_t *p_val)
{
    assert( p_this );

    vlc_object_internals_t *p_priv = vlc_internals( p_this );
    variable_t *p_var;
    int err = VLC_SUCCESS;

    p_var = Lookup( p_this, psz_name );
    if( p_var != ((void*)0) )
    {
        assert( expected_type == 0 ||
                (p_var->i_type & VLC_VAR_CLASS) == expected_type );
        assert ((p_var->i_type & VLC_VAR_CLASS) != VLC_VAR_VOID);


        *p_val = p_var->val;


        p_var->ops->pf_dup( p_val );
    }
    else
        err = VLC_ENOVAR;

    vlc_mutex_unlock( &p_priv->var_lock );
    return err;
}
