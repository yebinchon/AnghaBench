
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PacketFinish () ;
 int PacketStart () ;
 int PacketWriteChar (char) ;
 int PacketWriteHexNumber (int,int) ;

void PacketWriteError(int code)
{
    PacketStart();
    PacketWriteChar('E');
    PacketWriteHexNumber(code, 2);
    PacketFinish();
}
