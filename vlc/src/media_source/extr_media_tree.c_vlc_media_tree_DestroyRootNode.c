
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ vlc_media_tree_t ;


 int vlc_media_tree_ClearChildren (int *) ;

__attribute__((used)) static inline void
vlc_media_tree_DestroyRootNode(vlc_media_tree_t *tree)
{
    vlc_media_tree_ClearChildren(&tree->root);
}
