
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_media_tree_t ;
struct TYPE_7__ {int node; void* userdata; struct vlc_media_tree_callbacks const* cbs; } ;
typedef TYPE_1__ vlc_media_tree_listener_id ;
struct vlc_media_tree_callbacks {int dummy; } ;
struct TYPE_8__ {int listeners; } ;
typedef TYPE_2__ media_tree_private_t ;


 TYPE_1__* malloc (int) ;
 TYPE_2__* mt_priv (int *) ;
 scalar_t__ unlikely (int) ;
 int vlc_list_append (int *,int *) ;
 int vlc_media_tree_Lock (int *) ;
 int vlc_media_tree_NotifyCurrentState (int *,TYPE_1__*) ;
 int vlc_media_tree_Unlock (int *) ;

vlc_media_tree_listener_id *
vlc_media_tree_AddListener(vlc_media_tree_t *tree,
                           const struct vlc_media_tree_callbacks *cbs,
                           void *userdata, bool notify_current_state)
{
    vlc_media_tree_listener_id *listener = malloc(sizeof(*listener));
    if (unlikely(!listener))
        return ((void*)0);
    listener->cbs = cbs;
    listener->userdata = userdata;

    media_tree_private_t *priv = mt_priv(tree);
    vlc_media_tree_Lock(tree);

    vlc_list_append(&listener->node, &priv->listeners);

    if (notify_current_state)
        vlc_media_tree_NotifyCurrentState(tree, listener);

    vlc_media_tree_Unlock(tree);
    return listener;
}
