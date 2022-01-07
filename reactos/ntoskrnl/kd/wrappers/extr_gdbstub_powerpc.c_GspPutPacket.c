
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int* PCHAR ;
typedef size_t LONG ;
typedef int CHAR ;


 char GdbGetChar () ;
 int GdbPutChar (char) ;
 char* HexChars ;

VOID
GspPutPacket(PCHAR Buffer)
{
    CHAR Checksum;
    LONG Count;
    CHAR ch;


    do
    {
        GdbPutChar('$');
        Checksum = 0;
        Count = 0;

        while ((ch = Buffer[Count]))
        {
            GdbPutChar(ch);
            Checksum += ch;
            Count += 1;
        }

        GdbPutChar('#');
        GdbPutChar(HexChars[(Checksum >> 4) & 0xf]);
        GdbPutChar(HexChars[Checksum & 0xf]);
    }
    while (GdbGetChar() != '+');
}
