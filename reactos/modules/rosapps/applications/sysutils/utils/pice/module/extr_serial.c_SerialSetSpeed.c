
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef long ULONG ;
typedef int UCHAR ;


 scalar_t__ DLH ;
 scalar_t__ DLL ;
 scalar_t__ LCR ;
 int inportb (int ) ;
 int outportb (int ,int) ;
 scalar_t__ usSerialPortBase ;

void SerialSetSpeed(ULONG baudrate)
{
    UCHAR c;
    ULONG divisor;

    divisor = (ULONG) (115200L/baudrate);

    c = inportb((USHORT)(usSerialPortBase + LCR));
    outportb((USHORT)(usSerialPortBase + LCR), (UCHAR)(c | 0x80));
    outportb((USHORT)(usSerialPortBase + DLL), (UCHAR)(divisor & 0x00FF));
    outportb((USHORT)(usSerialPortBase + DLH), (UCHAR)((divisor >> 8) & 0x00FF));
    outportb((USHORT)(usSerialPortBase + LCR), c);

}
