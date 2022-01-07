
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef unsigned char USHORT ;
typedef int UCHAR ;


 int printf (char*,...) ;

__attribute__((used)) static VOID
PnpDecodeIoPort(unsigned char *Ptr)
{
  USHORT MinBase;
  USHORT MaxBase;
  UCHAR Align;
  UCHAR Length;


  Ptr++;
  MinBase = *Ptr;
  Ptr++;
  MinBase += (*Ptr << 8);
  Ptr++;
  MaxBase = *Ptr;
  Ptr++;
  MaxBase += (*Ptr << 8);
  Ptr++;
  Align = *Ptr;
  Ptr++;
  Length = *Ptr;

  printf("  I/O Port descriptor\n");
  printf("    MinBase 0x%x  MaxBase 0x%x  Align %u  Length %u\n",
  MinBase, MaxBase, Align, Length);
}
