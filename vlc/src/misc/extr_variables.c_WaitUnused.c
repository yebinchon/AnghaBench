
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int var_lock; int var_wait; } ;
typedef TYPE_1__ vlc_object_internals_t ;
struct TYPE_6__ {scalar_t__ b_incallback; } ;
typedef TYPE_2__ variable_t ;


 int mutex_cleanup_push (int *) ;
 int vlc_cleanup_pop () ;
 int vlc_cond_wait (int *,int *) ;
 TYPE_1__* vlc_internals (int *) ;

__attribute__((used)) static void WaitUnused(vlc_object_t *obj, variable_t *var)
{
    vlc_object_internals_t *priv = vlc_internals(obj);

    mutex_cleanup_push(&priv->var_lock);
    while (var->b_incallback)
        vlc_cond_wait(&priv->var_wait, &priv->var_lock);
    vlc_cleanup_pop();
}
