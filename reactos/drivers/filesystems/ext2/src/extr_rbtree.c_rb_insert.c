
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;


 int rb_insert_color (struct rb_node*,struct rb_root*) ;
 int rb_link_node (struct rb_node*,struct rb_node*,struct rb_node**) ;

void rb_insert(struct rb_root *root, struct rb_node *node,
         int (*cmp)(struct rb_node *, struct rb_node *))
{
    struct rb_node **new = &(root->rb_node), *parent = ((void*)0);


    while (*new) {
        int result = cmp(node, *new);

        parent = *new;
        if (result < 0)
            new = &((*new)->rb_left);
        else if (result > 0)
            new = &((*new)->rb_right);
        else
            return;

    }


    rb_link_node(node, parent, new);
    rb_insert_color(node, root);
}
