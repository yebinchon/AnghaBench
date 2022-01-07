
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int type; } ;
typedef TYPE_1__ ME_DisplayItem ;
typedef int ME_DIType ;


 scalar_t__ ME_DITypesEqual (int ,int ) ;

ME_DisplayItem *ME_FindItemFwd(ME_DisplayItem *di, ME_DIType nTypeOrClass)
{
  if (!di) return ((void*)0);
  di = di->next;
  while(di!=((void*)0)) {
    if (ME_DITypesEqual(di->type, nTypeOrClass))
      return di;
    di = di->next;
  }
  return ((void*)0);
}
