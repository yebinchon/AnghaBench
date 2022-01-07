
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int * PVOID ;


 int Ntdll ;
 int PF_INIT (int ,int ) ;
 int PhHeapHandle ;
 int RtlAllocateHeap ;
 int * pfRtlAllocateHeap (int ,int ,int ) ;

__attribute__((used)) static PVOID PhAllocate(SIZE_T Size)
{
 PF_INIT(RtlAllocateHeap, Ntdll);
 if (pfRtlAllocateHeap == ((void*)0))
  return ((void*)0);

 return pfRtlAllocateHeap(PhHeapHandle, 0, Size);
}
