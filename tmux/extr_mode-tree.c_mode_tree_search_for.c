
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mode_tree_item {int itemdata; int name; struct mode_tree_item* parent; int children; } ;
struct mode_tree_data {size_t current; int * search; int modedata; scalar_t__ (* searchcb ) (int ,int ,int *) ;int children; TYPE_1__* line_list; } ;
struct TYPE_2__ {struct mode_tree_item* item; } ;


 int TAILQ_EMPTY (int *) ;
 struct mode_tree_item* TAILQ_FIRST (int *) ;
 struct mode_tree_item* TAILQ_NEXT (struct mode_tree_item*,int ) ;
 int entry ;
 int * strstr (int ,int *) ;
 scalar_t__ stub1 (int ,int ,int *) ;

__attribute__((used)) static struct mode_tree_item *
mode_tree_search_for(struct mode_tree_data *mtd)
{
 struct mode_tree_item *mti, *last, *next;

 if (mtd->search == ((void*)0))
  return (((void*)0));

 mti = last = mtd->line_list[mtd->current].item;
 for (;;) {
  if (!TAILQ_EMPTY(&mti->children))
   mti = TAILQ_FIRST(&mti->children);
  else if ((next = TAILQ_NEXT(mti, entry)) != ((void*)0))
   mti = next;
  else {
   for (;;) {
    mti = mti->parent;
    if (mti == ((void*)0))
     break;
    if ((next = TAILQ_NEXT(mti, entry)) != ((void*)0)) {
     mti = next;
     break;
    }
   }
  }
  if (mti == ((void*)0))
   mti = TAILQ_FIRST(&mtd->children);
  if (mti == last)
   break;

  if (mtd->searchcb == ((void*)0)) {
   if (strstr(mti->name, mtd->search) != ((void*)0))
    return (mti);
   continue;
  }
  if (mtd->searchcb(mtd->modedata, mti->itemdata, mtd->search))
   return (mti);
 }
 return (((void*)0));
}
