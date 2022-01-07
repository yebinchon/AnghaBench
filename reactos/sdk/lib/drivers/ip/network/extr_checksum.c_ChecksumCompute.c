
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
typedef int UINT ;
typedef scalar_t__ PVOID ;
typedef scalar_t__* PUSHORT ;
typedef scalar_t__* PUCHAR ;



ULONG ChecksumCompute(
  PVOID Data,
  UINT Count,
  ULONG Seed)
{
  register ULONG Sum = Seed;

  while (Count > 1)
    {
      Sum += *(PUSHORT)Data;
      Count -= 2;
      Data = (PVOID)((ULONG_PTR) Data + 2);
    }


  if (Count > 0)
    {
      Sum += *(PUCHAR)Data;
    }

  return Sum;
}
