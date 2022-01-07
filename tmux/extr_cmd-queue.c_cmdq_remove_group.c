
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_item {scalar_t__ group; } ;


 struct cmdq_item* TAILQ_NEXT (struct cmdq_item*,int ) ;
 int cmdq_remove (struct cmdq_item*) ;
 int entry ;

__attribute__((used)) static void
cmdq_remove_group(struct cmdq_item *item)
{
 struct cmdq_item *this, *next;

 if (item->group == 0)
  return;
 this = TAILQ_NEXT(item, entry);
 while (this != ((void*)0)) {
  next = TAILQ_NEXT(this, entry);
  if (this->group == item->group)
   cmdq_remove(this);
  this = next;
 }
}
