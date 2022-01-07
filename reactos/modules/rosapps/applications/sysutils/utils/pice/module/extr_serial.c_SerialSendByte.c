
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int UCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ LSR ;
 int TRUE ;
 scalar_t__ TXR ;
 int XMTRDY ;
 int inportb (int ) ;
 int outportb (int ,int ) ;
 scalar_t__ usSerialPortBase ;

BOOLEAN SerialSendByte(UCHAR x)
{
    ULONG timeout;

    timeout = 0x00FFFFL;


    while ((inportb((USHORT)(usSerialPortBase + LSR)) & XMTRDY) == 0)
        if (!(--timeout))
        {
   return FALSE;
        }

    outportb((USHORT)(usSerialPortBase + TXR), x);

 return TRUE;
}
