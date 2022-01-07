
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int var_lock; int var_wait; int * resources; } ;
typedef TYPE_1__ vlc_object_internals_t ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 int var_DestroyAll (int *) ;
 int vlc_cond_destroy (int *) ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

void vlc_object_deinit(vlc_object_t *obj)
{
    vlc_object_internals_t *priv = vlc_internals(obj);

    assert(priv->resources == ((void*)0));


    int canc = vlc_savecancel();
    var_DestroyAll(obj);
    vlc_restorecancel(canc);

    vlc_cond_destroy(&priv->var_wait);
    vlc_mutex_destroy(&priv->var_lock);
    free(priv);
}
