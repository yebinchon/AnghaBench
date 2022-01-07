
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pp_children; int i_children; int * p_item; } ;
struct TYPE_6__ {TYPE_3__ root; } ;
typedef TYPE_1__ vlc_media_tree_t ;
struct TYPE_7__ {TYPE_1__ public_data; int listeners; int rc; int lock; } ;
typedef TYPE_2__ media_tree_private_t ;
typedef TYPE_3__ input_item_node_t ;


 int TAB_INIT (int ,int ) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_list_init (int *) ;
 int vlc_mutex_init (int *) ;

vlc_media_tree_t *
vlc_media_tree_New(void)
{
    media_tree_private_t *priv = malloc(sizeof(*priv));
    if (unlikely(!priv))
        return ((void*)0);

    vlc_mutex_init(&priv->lock);
    vlc_atomic_rc_init(&priv->rc);
    vlc_list_init(&priv->listeners);

    vlc_media_tree_t *tree = &priv->public_data;
    input_item_node_t *root = &tree->root;
    root->p_item = ((void*)0);
    TAB_INIT(root->i_children, root->pp_children);

    return tree;
}
