
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct attr_item {int mode; struct attr_item* next; int time; int fname; } ;


 int error (char*) ;
 scalar_t__ malloc (int) ;
 int strdup (char*) ;

void push_attr(struct attr_item **list,char *fname,int mode,time_t time)
{
  struct attr_item *item;

  item = (struct attr_item *)malloc(sizeof(struct attr_item));
  if (item == ((void*)0))
    error("Out of memory");
  item->fname = strdup(fname);
  item->mode = mode;
  item->time = time;
  item->next = *list;
  *list = item;
}
