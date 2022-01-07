
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;


 int Ntdll ;
 int PF_INIT (int ,int ) ;
 int PhHeapHandle ;
 int RtlFreeHeap ;
 int pfRtlFreeHeap (int ,int ,int ) ;

__attribute__((used)) static VOID PhFree(PVOID Memory)
{
 PF_INIT(RtlFreeHeap, Ntdll);

 if (pfRtlFreeHeap != ((void*)0))
  pfRtlFreeHeap(PhHeapHandle, 0, Memory);
}
