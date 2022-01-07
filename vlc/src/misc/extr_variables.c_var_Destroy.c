
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int var_lock; int var_root; } ;
typedef TYPE_1__ vlc_object_internals_t ;
struct TYPE_8__ {scalar_t__ i_usage; int b_incallback; } ;
typedef TYPE_2__ variable_t ;


 int Destroy (TYPE_2__*) ;
 TYPE_2__* Lookup (int *,char const*) ;
 int assert (int) ;
 int msg_Dbg (int *,char*,char const*) ;
 int tdelete (TYPE_2__*,int *,int ) ;
 int varcmp ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_unlock (int *) ;

void (var_Destroy)(vlc_object_t *p_this, const char *psz_name)
{
    variable_t *p_var;

    assert( p_this );

    vlc_object_internals_t *p_priv = vlc_internals( p_this );

    p_var = Lookup( p_this, psz_name );
    if( p_var == ((void*)0) )
        msg_Dbg( p_this, "attempt to destroy nonexistent variable \"%s\"",
                 psz_name );
    else if( --p_var->i_usage == 0 )
    {
        assert(!p_var->b_incallback);
        tdelete( p_var, &p_priv->var_root, varcmp );
    }
    else
    {
        assert(p_var->i_usage != -1u);
        p_var = ((void*)0);
    }
    vlc_mutex_unlock( &p_priv->var_lock );

    if( p_var != ((void*)0) )
        Destroy( p_var );
}
