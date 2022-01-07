
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int* PUCHAR ;
typedef scalar_t__ PISAPNP_IDENTIFIER ;


 int ISAPNP_LFSR_SEED ;
 int NextLFSR (int,int) ;

__attribute__((used)) static
USHORT
IsaPnpChecksum(PISAPNP_IDENTIFIER Identifier)
{
  USHORT i,j, Lfsr, Byte;

  Lfsr = ISAPNP_LFSR_SEED;
  for (i = 0; i < 8; i++)
  {
    Byte = *(((PUCHAR)Identifier) + i);
    for (j = 0; j < 8; j++)
    {
      Lfsr = NextLFSR(Lfsr, Byte);
      Byte >>= 1;
    }
  }

  return Lfsr;
}
