
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int Entry; } ;
typedef TYPE_1__* PUMA_DESCRIPTOR ;


 int RemoveEntryList (int *) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;

__attribute__((used)) static VOID FreeUmaDescriptor(PUMA_DESCRIPTOR UmaDesc)
{
    RemoveEntryList(&UmaDesc->Entry);
    RtlFreeHeap(RtlGetProcessHeap(), 0, UmaDesc);
}
