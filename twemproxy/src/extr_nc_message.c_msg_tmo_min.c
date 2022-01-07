
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbnode {int dummy; } ;
struct msg {int dummy; } ;


 struct msg* msg_from_rbe (struct rbnode*) ;
 struct rbnode* rbtree_min (int *) ;
 int tmo_rbt ;

struct msg *
msg_tmo_min(void)
{
    struct rbnode *node;

    node = rbtree_min(&tmo_rbt);
    if (node == ((void*)0)) {
        return ((void*)0);
    }

    return msg_from_rbe(node);
}
