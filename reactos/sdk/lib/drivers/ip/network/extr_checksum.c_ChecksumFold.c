
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;



ULONG ChecksumFold(
  ULONG Sum)
{

  while (Sum >> 16)
    {
      Sum = (Sum & 0xFFFF) + (Sum >> 16);
    }

  return Sum;
}
