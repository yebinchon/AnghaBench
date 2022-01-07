
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int printf (char*,...) ;

__attribute__((used)) static VOID
PnpDecodeDma(unsigned char *Ptr)
{
  unsigned char DmaChannel;
  unsigned char DmaStatus;
  int i;

  DmaChannel = *Ptr;
  Ptr++;
  DmaStatus = *Ptr;

  printf("      DMAs:");

  for (i = 0; i < 8; i++)
    {
      if (DmaChannel & (1 << i))
 {
   printf(" %u", i);
 }
    }

  printf("\n");
}
