
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct mode_tree_item {int expanded; struct mode_tree_item* parent; int tag; } ;
struct mode_tree_data {TYPE_1__* wp; } ;
struct TYPE_2__ {int flags; } ;


 int PANE_REDRAW ;
 int mode_tree_build (struct mode_tree_data*) ;
 int mode_tree_draw (struct mode_tree_data*) ;
 struct mode_tree_item* mode_tree_search_for (struct mode_tree_data*) ;
 int mode_tree_set_current (struct mode_tree_data*,int ) ;

__attribute__((used)) static void
mode_tree_search_set(struct mode_tree_data *mtd)
{
 struct mode_tree_item *mti, *loop;
 uint64_t tag;

 mti = mode_tree_search_for(mtd);
 if (mti == ((void*)0))
  return;
 tag = mti->tag;

 loop = mti->parent;
 while (loop != ((void*)0)) {
  loop->expanded = 1;
  loop = loop->parent;
 }

 mode_tree_build(mtd);
 mode_tree_set_current(mtd, tag);
 mode_tree_draw(mtd);
 mtd->wp->flags |= PANE_REDRAW;
}
