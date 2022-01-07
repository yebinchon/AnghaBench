
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_media_tree_t ;
struct TYPE_4__ {int node; } ;
typedef TYPE_1__ vlc_media_tree_listener_id ;


 int free (TYPE_1__*) ;
 int vlc_list_remove (int *) ;
 int vlc_media_tree_Lock (int *) ;
 int vlc_media_tree_Unlock (int *) ;

void
vlc_media_tree_RemoveListener(vlc_media_tree_t *tree,
                              vlc_media_tree_listener_id *listener)
{
    vlc_media_tree_Lock(tree);
    vlc_list_remove(&listener->node);
    vlc_media_tree_Unlock(tree);

    free(listener);
}
