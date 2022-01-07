
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; int prev; int type; } ;
typedef TYPE_1__ ME_DisplayItem ;
typedef int ME_DIType ;


 TYPE_1__* heap_alloc_zero (int) ;

ME_DisplayItem *ME_MakeDI(ME_DIType type)
{
  ME_DisplayItem *item = heap_alloc_zero(sizeof(*item));

  item->type = type;
  item->prev = item->next = ((void*)0);
  return item;
}
