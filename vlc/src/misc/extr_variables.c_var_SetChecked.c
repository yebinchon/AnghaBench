
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_10__ {int var_lock; } ;
typedef TYPE_2__ vlc_object_internals_t ;
struct TYPE_11__ {int i_type; TYPE_1__* ops; int val; } ;
typedef TYPE_3__ variable_t ;
struct TYPE_9__ {int (* pf_free ) (int *) ;int (* pf_dup ) (int *) ;} ;


 int CheckValue (TYPE_3__*,int *) ;
 TYPE_3__* Lookup (int *,char const*) ;
 int TriggerCallback (int *,TYPE_3__*,char const*,int ) ;
 int VLC_ENOVAR ;
 int VLC_SUCCESS ;
 int VLC_VAR_CLASS ;
 int VLC_VAR_VOID ;
 int WaitUnused (int *,TYPE_3__*) ;
 int assert (int) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 TYPE_2__* vlc_internals (int *) ;
 int vlc_mutex_unlock (int *) ;

int (var_SetChecked)(vlc_object_t *p_this, const char *psz_name,
                     int expected_type, vlc_value_t val)
{
    variable_t *p_var;
    vlc_value_t oldval;

    assert( p_this );

    vlc_object_internals_t *p_priv = vlc_internals( p_this );

    p_var = Lookup( p_this, psz_name );
    if( p_var == ((void*)0) )
    {
        vlc_mutex_unlock( &p_priv->var_lock );
        return VLC_ENOVAR;
    }

    assert( expected_type == 0 ||
            (p_var->i_type & VLC_VAR_CLASS) == expected_type );
    assert ((p_var->i_type & VLC_VAR_CLASS) != VLC_VAR_VOID);

    WaitUnused( p_this, p_var );


    p_var->ops->pf_dup( &val );


    oldval = p_var->val;


    CheckValue( p_var, &val );


    p_var->val = val;


    TriggerCallback( p_this, p_var, psz_name, oldval );


    p_var->ops->pf_free( &oldval );

    vlc_mutex_unlock( &p_priv->var_lock );
    return VLC_SUCCESS;
}
