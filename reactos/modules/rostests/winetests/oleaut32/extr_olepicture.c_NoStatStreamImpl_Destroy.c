
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ supportHandle; } ;
typedef TYPE_1__ NoStatStreamImpl ;


 int GetProcessHeap () ;
 int GlobalFree (scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void NoStatStreamImpl_Destroy(NoStatStreamImpl* This)
{
  GlobalFree(This->supportHandle);
  This->supportHandle=0;
  HeapFree(GetProcessHeap(), 0, This);
}
