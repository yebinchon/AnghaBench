
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;



__attribute__((used)) static
inline
USHORT
NextLFSR(USHORT Lfsr, USHORT InputBit)
{
  ULONG NextLfsr = Lfsr >> 1;

  NextLfsr |= (((Lfsr ^ NextLfsr) ^ InputBit)) << 7;

  return NextLfsr;
}
