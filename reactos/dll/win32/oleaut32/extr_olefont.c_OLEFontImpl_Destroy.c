
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* lpstrName; } ;
struct TYPE_7__ {scalar_t__ pFontEventsCP; scalar_t__ pPropertyNotifyCP; TYPE_1__ description; } ;
typedef TYPE_2__ OLEFontImpl ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int IConnectionPoint_Release (scalar_t__) ;
 int TRACE (char*,TYPE_2__*) ;

__attribute__((used)) static void OLEFontImpl_Destroy(OLEFontImpl* fontDesc)
{
  TRACE("(%p)\n", fontDesc);

  HeapFree(GetProcessHeap(), 0, fontDesc->description.lpstrName);

  if (fontDesc->pPropertyNotifyCP)
      IConnectionPoint_Release(fontDesc->pPropertyNotifyCP);
  if (fontDesc->pFontEventsCP)
      IConnectionPoint_Release(fontDesc->pFontEventsCP);

  HeapFree(GetProcessHeap(), 0, fontDesc);
}
