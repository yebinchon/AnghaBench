
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_value_t ;
typedef int vlc_object_t ;
struct TYPE_6__ {int var_wait; int var_lock; } ;
typedef TYPE_1__ vlc_object_internals_t ;
struct TYPE_7__ {int b_incallback; int val; TYPE_3__* value_callbacks; } ;
typedef TYPE_2__ variable_t ;
struct TYPE_8__ {struct TYPE_8__* next; int p_data; int (* pf_value_callback ) (int *,char const*,int ,int ,int ) ;} ;
typedef TYPE_3__ callback_entry_t ;


 int assert (int) ;
 int stub1 (int *,char const*,int ,int ,int ) ;
 int vlc_cond_broadcast (int *) ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void TriggerCallback(vlc_object_t *obj, variable_t *var,
                            const char *name, vlc_value_t prev)
{
    assert(obj != ((void*)0));

    callback_entry_t *entry = var->value_callbacks;
    if (entry == ((void*)0))
        return;

    vlc_object_internals_t *priv = vlc_internals(obj);

    assert(!var->b_incallback);
    var->b_incallback = 1;
    vlc_mutex_unlock(&priv->var_lock);

    do
    {
        entry->pf_value_callback(obj, name, prev, var->val, entry->p_data);
        entry = entry->next;
    }
    while (entry != ((void*)0));

    vlc_mutex_lock(&priv->var_lock);
    var->b_incallback = 0;
    vlc_cond_broadcast(&priv->var_wait);
}
