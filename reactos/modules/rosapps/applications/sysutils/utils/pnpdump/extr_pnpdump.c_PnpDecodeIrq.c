
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef unsigned char USHORT ;


 int printf (char*,...) ;

__attribute__((used)) static VOID
PnpDecodeIrq(unsigned char *Ptr)
{
  USHORT IrqMask;
  int i;

  IrqMask = *Ptr;
  Ptr++;
  IrqMask |= (*Ptr << 8);

  printf("      IRQs:");

  for (i = 0; i < 16; i++)
    {
      if (IrqMask & (1 << i))
 {
   printf(" %u", i);
 }
    }

  printf("\n");
}
