
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {size_t i_control; int lock_control; int wait_control; TYPE_2__* control; int * stats; int p_item; int * p_resource; int * p_es_out_display; int * p_renderer; } ;
typedef TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {int param; int i_type; } ;
typedef TYPE_2__ input_control_t ;


 int ControlRelease (int ,int *) ;
 int VLC_OBJECT (int *) ;
 int es_out_Delete (int *) ;
 int free (char*) ;
 char* input_item_GetName (int ) ;
 int input_item_Release (int ) ;
 TYPE_1__* input_priv (int *) ;
 int input_resource_Release (int *) ;
 int input_stats_Destroy (int *) ;
 int msg_Dbg (int *,char*,char*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (int ) ;
 int vlc_renderer_item_release (int *) ;

__attribute__((used)) static void Destroy(input_thread_t *input)
{
    input_thread_private_t *priv = input_priv(input);


    char *name = input_item_GetName(priv->p_item);
    msg_Dbg(input, "destroying input for '%s'", name);
    free(name);


    if (priv->p_renderer != ((void*)0))
        vlc_renderer_item_release(priv->p_renderer);
    if (priv->p_es_out_display != ((void*)0))
        es_out_Delete(priv->p_es_out_display);

    if (priv->p_resource != ((void*)0))
        input_resource_Release(priv->p_resource);

    input_item_Release(priv->p_item);

    if (priv->stats != ((void*)0))
        input_stats_Destroy(priv->stats);

    for (size_t i = 0; i < priv->i_control; i++)
    {
        input_control_t *ctrl = &priv->control[i];

        ControlRelease(ctrl->i_type, &ctrl->param);
    }

    vlc_cond_destroy(&priv->wait_control);
    vlc_mutex_destroy(&priv->lock_control);
    vlc_object_delete(VLC_OBJECT(input));
}
