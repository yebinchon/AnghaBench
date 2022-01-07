
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;


 int DTR ;
 int EVEN_PARITY ;
 scalar_t__ FCR ;
 scalar_t__ IER ;
 scalar_t__ LCR ;
 scalar_t__ MCR ;
 int NO_PARITY ;
 int ODD_PARITY ;
 int RTS ;
 int inportb (int ) ;
 int outportb (int ,int) ;
 scalar_t__ usSerialPortBase ;

void SerialSetOthers(ULONG Parity, ULONG Bits, ULONG StopBit)
{
    ULONG setting;
    UCHAR c;

    if (usSerialPortBase == 0) return ;
    if (Bits < 5 || Bits > 8) return ;
    if (StopBit != 1 && StopBit != 2) return ;
    if (Parity != NO_PARITY && Parity != ODD_PARITY && Parity != EVEN_PARITY)
       return;

    setting = Bits-5;
    setting |= ((StopBit == 1) ? 0x00 : 0x04);
    setting |= Parity;

    c = inportb((USHORT)(usSerialPortBase + LCR));
    outportb((USHORT)(usSerialPortBase + LCR), (UCHAR)(c & ~0x80));


    outportb((USHORT)(usSerialPortBase + IER), (UCHAR)0);


    outportb((USHORT)(usSerialPortBase + FCR), (UCHAR)0);

    outportb((USHORT)(usSerialPortBase + LCR), (UCHAR)setting);

    outportb((USHORT)(usSerialPortBase + MCR), DTR | RTS);


    return ;
}
