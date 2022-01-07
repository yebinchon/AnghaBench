
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int var_lock; } ;
typedef TYPE_1__ vlc_object_internals_t ;
struct TYPE_8__ {int val; } ;
typedef TYPE_2__ variable_t ;


 TYPE_2__* Lookup (int *,char const*) ;
 int TriggerCallback (int *,TYPE_2__*,char const*,int ) ;
 int WaitUnused (int *,TYPE_2__*) ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_unlock (int *) ;

void (var_TriggerCallback)(vlc_object_t *p_this, const char *psz_name)
{
    vlc_object_internals_t *p_priv = vlc_internals( p_this );
    variable_t *p_var = Lookup( p_this, psz_name );
    if( p_var != ((void*)0) )
    {
        WaitUnused( p_this, p_var );



        TriggerCallback( p_this, p_var, psz_name, p_var->val );
    }
    vlc_mutex_unlock( &p_priv->var_lock );
}
