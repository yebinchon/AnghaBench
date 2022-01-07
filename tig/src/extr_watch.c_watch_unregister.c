
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watch {struct watch* next; } ;


 int memset (struct watch*,int ,int) ;
 struct watch* watches ;

void
watch_unregister(struct watch *watch)
{
 struct watch *pos, *prev = ((void*)0);

 for (pos = watches; pos; prev = pos, pos = pos->next) {
  if (watch != pos)
   continue;
  if (!prev)
   watches = watch->next;
  else
   prev->next = watch->next;
  break;
 }

 memset(watch, 0, sizeof(*watch));
}
