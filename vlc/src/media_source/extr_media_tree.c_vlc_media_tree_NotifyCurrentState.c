
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ vlc_media_tree_t ;
typedef int vlc_media_tree_listener_id ;


 int on_children_reset ;
 int vlc_media_tree_NotifyListener (TYPE_1__*,int *,int ,int *) ;

__attribute__((used)) static void
vlc_media_tree_NotifyCurrentState(vlc_media_tree_t *tree,
                                  vlc_media_tree_listener_id *listener)
{
    vlc_media_tree_NotifyListener(tree, listener, on_children_reset,
                                  &tree->root);
}
