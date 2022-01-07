
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PUCHAR ;


 int DPRINT (char*,int) ;
 int READ_PORT_UCHAR (int ) ;

__attribute__((used)) static ULONG EISA_ELCR_Read(ULONG irq)
{
   if (irq < 16)
   {
      PUCHAR port = (PUCHAR)(0x4d0 + (irq >> 3));
      return (READ_PORT_UCHAR(port) >> (irq & 7)) & 1;
   }
   DPRINT("Broken MPtable reports ISA irq %d\n", irq);
   return 0;
}
