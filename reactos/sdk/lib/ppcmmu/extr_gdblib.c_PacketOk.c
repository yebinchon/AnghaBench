
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PacketFinish () ;
 int PacketStart () ;
 int PacketWriteString (char*) ;

void PacketOk()
{
    PacketStart();
    PacketWriteString("OK");
    PacketFinish();
}
