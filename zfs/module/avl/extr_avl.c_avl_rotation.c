
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* avl_root; } ;
typedef TYPE_1__ avl_tree_t ;
struct TYPE_14__ {struct TYPE_14__** avl_child; } ;
typedef TYPE_2__ avl_node_t ;


 int AVL_SETBALANCE (TYPE_2__*,int) ;
 int AVL_SETCHILD (TYPE_2__*,int) ;
 int AVL_SETPARENT (TYPE_2__*,TYPE_2__*) ;
 int AVL_XBALANCE (TYPE_2__*) ;
 int AVL_XCHILD (TYPE_2__*) ;
 TYPE_2__* AVL_XPARENT (TYPE_2__*) ;

__attribute__((used)) static int
avl_rotation(avl_tree_t *tree, avl_node_t *node, int balance)
{
 int left = !(balance < 0);
 int right = 1 - left;
 int left_heavy = balance >> 1;
 int right_heavy = -left_heavy;
 avl_node_t *parent = AVL_XPARENT(node);
 avl_node_t *child = node->avl_child[left];
 avl_node_t *cright;
 avl_node_t *gchild;
 avl_node_t *gright;
 avl_node_t *gleft;
 int which_child = AVL_XCHILD(node);
 int child_bal = AVL_XBALANCE(child);
 if (child_bal != right_heavy) {







  child_bal += right_heavy;




  cright = child->avl_child[right];
  node->avl_child[left] = cright;
  if (cright != ((void*)0)) {
   AVL_SETPARENT(cright, node);
   AVL_SETCHILD(cright, left);
  }




  child->avl_child[right] = node;
  AVL_SETBALANCE(node, -child_bal);
  AVL_SETCHILD(node, right);
  AVL_SETPARENT(node, child);




  AVL_SETBALANCE(child, child_bal);
  AVL_SETCHILD(child, which_child);
  AVL_SETPARENT(child, parent);
  if (parent != ((void*)0))
   parent->avl_child[which_child] = child;
  else
   tree->avl_root = child;

  return (child_bal == 0);
 }
 gchild = child->avl_child[right];
 gleft = gchild->avl_child[left];
 gright = gchild->avl_child[right];






 node->avl_child[left] = gright;
 if (gright != ((void*)0)) {
  AVL_SETPARENT(gright, node);
  AVL_SETCHILD(gright, left);
 }

 child->avl_child[right] = gleft;
 if (gleft != ((void*)0)) {
  AVL_SETPARENT(gleft, child);
  AVL_SETCHILD(gleft, right);
 }
 balance = AVL_XBALANCE(gchild);
 gchild->avl_child[left] = child;
 AVL_SETBALANCE(child, (balance == right_heavy ? left_heavy : 0));
 AVL_SETPARENT(child, gchild);
 AVL_SETCHILD(child, left);

 gchild->avl_child[right] = node;
 AVL_SETBALANCE(node, (balance == left_heavy ? right_heavy : 0));
 AVL_SETPARENT(node, gchild);
 AVL_SETCHILD(node, right);

 AVL_SETBALANCE(gchild, 0);
 AVL_SETPARENT(gchild, parent);
 AVL_SETCHILD(gchild, which_child);
 if (parent != ((void*)0))
  parent->avl_child[which_child] = gchild;
 else
  tree->avl_root = gchild;

 return (1);
}
