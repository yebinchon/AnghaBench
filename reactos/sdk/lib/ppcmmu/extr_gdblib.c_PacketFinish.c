
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ComputedCsum ;
 scalar_t__ DataInAddr ;
 int DataOutAddr ;
 char* DataOutBuffer ;
 int DataOutCsum ;
 scalar_t__ PacketSent ;
 scalar_t__ ParseState ;
 int SerialRead () ;
 int SerialWrite (char) ;
 int chr (int ) ;
 char* hex ;
 int serport ;

void PacketFinish()
{
    int i, ch, count = 0;

    PacketSent = 0;

    SerialWrite('$');
    for (i = 0; i < DataOutAddr; i++)
    {
        SerialWrite(DataOutBuffer[i]);
    }
    SerialWrite('#');
    SerialWrite(hex[(DataOutCsum >> 4) & 15]);
    SerialWrite(hex[DataOutCsum & 15]);

    while(!chr(serport) && ((ch = SerialRead()) != '+') && (ch != '$'));
    if (ch == '$')
    {
        ParseState = 0;
        DataInAddr = 0;
        ComputedCsum = 0;
    }
}
