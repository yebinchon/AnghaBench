
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_tree_item {int children; struct mode_tree_item* parent; } ;
struct mode_tree_data {int children; } ;


 int TAILQ_REMOVE (int *,struct mode_tree_item*,int ) ;
 int entry ;
 int mode_tree_free_item (struct mode_tree_item*) ;

void
mode_tree_remove(struct mode_tree_data *mtd, struct mode_tree_item *mti)
{
 struct mode_tree_item *parent = mti->parent;

 if (parent != ((void*)0))
  TAILQ_REMOVE(&parent->children, mti, entry);
 else
  TAILQ_REMOVE(&mtd->children, mti, entry);
 mode_tree_free_item(mti);
}
