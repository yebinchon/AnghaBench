
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int PVOID ;


 int RtlAllocateHeap (int ,int ,int ) ;
 int RtlGetProcessHeap () ;

__attribute__((used)) static PVOID
RosSymAllocMemUM(ULONG_PTR Size)
{
  return RtlAllocateHeap(RtlGetProcessHeap(), 0, Size);
}
