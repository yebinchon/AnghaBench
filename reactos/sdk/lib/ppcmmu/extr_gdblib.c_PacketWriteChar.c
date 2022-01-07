
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DataOutAddr ;
 int* DataOutBuffer ;
 int DataOutCsum ;

void PacketWriteChar(int ch)
{
    DataOutCsum += ch;
    DataOutBuffer[DataOutAddr++] = ch;
}
