
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_left; } ;



struct rb_node *rb_first(struct rb_root *root)
{
    struct rb_node *n;

    n = root->rb_node;
    if (!n)
        return ((void*)0);
    while (n->rb_left)
        n = n->rb_left;
    return n;
}
