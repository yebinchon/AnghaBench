
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG ;
typedef int* PUCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ LSR ;
 int RCVRDY ;
 scalar_t__ RXR ;
 int TRUE ;
 int inportb (int ) ;
 scalar_t__ usSerialPortBase ;

BOOLEAN SerialReadByte(PUCHAR px)
{
    ULONG timeout;

    timeout = 0x00FFFFL;


    while ((inportb((USHORT)(usSerialPortBase + LSR)) & RCVRDY) == 0)
        if (!(--timeout))
        {
   return FALSE;
        }

    *px = inportb((USHORT)(usSerialPortBase + RXR));

    return TRUE;
}
