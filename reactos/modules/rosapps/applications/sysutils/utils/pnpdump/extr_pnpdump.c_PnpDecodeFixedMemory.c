
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef unsigned char ULONG ;
typedef unsigned char UCHAR ;


 int printf (char*,...) ;

__attribute__((used)) static VOID
PnpDecodeFixedMemory(unsigned char *Ptr)
{
  UCHAR Info;
  ULONG Base;
  ULONG Length;

  Info = *Ptr;
  Ptr++;

  Base = *Ptr;
  Ptr++;
  Base += (*Ptr << 8);
  Ptr++;
  Base += (*Ptr << 16);
  Ptr++;
  Base += (*Ptr << 24);
  Ptr++;

  Length = *Ptr;
  Ptr++;
  Length += (*Ptr << 8);
  Ptr++;
  Length += (*Ptr << 16);
  Ptr++;
  Length += (*Ptr << 24);

  printf("  32-Bit fixed location memory range descriptor\n");
  printf("    Base 0x%lx  Length 0x%lx  Flags 0x%02x\n",
  Base, Length, Info);
}
