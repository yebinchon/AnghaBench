
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* USHORT ;
struct TYPE_2__ {void* ysize; void* xsize; int type; } ;
typedef int SERIAL_DATA_PACKET_CONNECT ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_CONNECT ;
typedef int BOOLEAN ;


 int AssemblePacket (int ,int) ;
 int PACKET_TYPE_CONNECT ;
 int SendPacketTimeout (int ) ;
 scalar_t__ packet ;

BOOLEAN Connect(USHORT xSize,USHORT ySize)
{
    PSERIAL_DATA_PACKET_CONNECT pConnect;
    PSERIAL_PACKET p;

    pConnect = (PSERIAL_DATA_PACKET_CONNECT)packet;
    pConnect->type = PACKET_TYPE_CONNECT;
    pConnect->xsize = xSize;
    pConnect->ysize = ySize;

    p = AssemblePacket((PUCHAR)pConnect,sizeof(SERIAL_DATA_PACKET_CONNECT));
    return SendPacketTimeout(p);
}
