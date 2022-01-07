
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;


 struct rb_node* rb_parent (struct rb_node*) ;

struct rb_node *rb_prev(struct rb_node *node)
{
    struct rb_node *parent;



    if (node->rb_left) {
        node = node->rb_left;
        while (node->rb_right)
            node=node->rb_right;
        return node;
    }



    while ((parent = rb_parent(node)) && node == parent->rb_left)
        node = parent;

    return parent;
}
