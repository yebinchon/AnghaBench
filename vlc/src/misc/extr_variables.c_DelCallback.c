
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int var_lock; } ;
typedef TYPE_1__ vlc_object_internals_t ;
typedef scalar_t__ vlc_callback_type_t ;
struct TYPE_10__ {TYPE_3__* list_callbacks; TYPE_3__* value_callbacks; } ;
typedef TYPE_2__ variable_t ;
struct TYPE_11__ {scalar_t__ p_data; struct TYPE_11__* next; int p_callback; } ;
typedef TYPE_3__ callback_entry_t ;


 TYPE_2__* Lookup (int *,char const*) ;
 int WaitUnused (int *,TYPE_2__*) ;
 int assert (int *) ;
 int free (TYPE_3__*) ;
 int msg_Err (int *,char*,int ,char const*) ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vlc_value_callback ;

__attribute__((used)) static void DelCallback( vlc_object_t *p_this, const char *psz_name,
                         const callback_entry_t *restrict match,
                         vlc_callback_type_t i_type )
{
    callback_entry_t **pp, *entry;
    variable_t *p_var;

    assert( p_this );

    vlc_object_internals_t *p_priv = vlc_internals( p_this );

    p_var = Lookup( p_this, psz_name );
    if( p_var == ((void*)0) )
    {
        vlc_mutex_unlock( &p_priv->var_lock );
        msg_Err( p_this, "cannot delete callback %p from nonexistent "
                 "variable '%s'", match->p_callback, psz_name );
        return;
    }

    WaitUnused( p_this, p_var );

    if (i_type == vlc_value_callback)
        pp = &p_var->value_callbacks;
    else
        pp = &p_var->list_callbacks;

    entry = *pp;
    assert(entry != ((void*)0));

    while (entry->p_callback != match->p_callback
        || entry->p_data != match->p_data)
    {
        pp = &entry->next;
        entry = *pp;
        assert(entry != ((void*)0));
    }

    *pp = entry->next;
    vlc_mutex_unlock( &p_priv->var_lock );
    free(entry);
}
