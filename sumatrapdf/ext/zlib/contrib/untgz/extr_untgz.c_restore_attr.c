
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_item {struct attr_item* next; int mode; int fname; int time; } ;


 int chmod (int ,int ) ;
 int free (struct attr_item*) ;
 int setfiletime (int ,int ) ;

void restore_attr(struct attr_item **list)
{
  struct attr_item *item, *prev;

  for (item = *list; item != ((void*)0); )
    {
      setfiletime(item->fname,item->time);
      chmod(item->fname,item->mode);
      prev = item;
      item = item->next;
      free(prev);
    }
  *list = ((void*)0);
}
