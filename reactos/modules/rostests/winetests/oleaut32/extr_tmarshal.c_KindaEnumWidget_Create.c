
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IKindaEnumWidget_iface; } ;
typedef TYPE_1__ KindaEnum ;
typedef TYPE_2__ IKindaEnumWidget ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int KindaEnumWidget_VTable ;

__attribute__((used)) static IKindaEnumWidget *KindaEnumWidget_Create(void)
{
    KindaEnum *This;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return ((void*)0);
    This->IKindaEnumWidget_iface.lpVtbl = &KindaEnumWidget_VTable;
    This->refs = 1;
    return &This->IKindaEnumWidget_iface;
}
