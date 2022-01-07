
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef unsigned char USHORT ;
typedef int UCHAR ;


 int printf (char*,...) ;

__attribute__((used)) static VOID
PnpDecodeFixedIoPort(unsigned char *Ptr)
{
  USHORT IoPort;
  UCHAR Length;

  IoPort = *Ptr;
  Ptr++;
  IoPort += (*Ptr << 8);
  Ptr++;
  Length = *Ptr;

  printf("  Fixed I/O Port descriptor\n");
  printf("    PortBase 0x%hx  Length 0x%x\n",
  IoPort, Length);
}
