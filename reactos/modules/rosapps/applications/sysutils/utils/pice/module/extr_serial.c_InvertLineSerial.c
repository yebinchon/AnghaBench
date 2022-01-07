
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int line; int type; } ;
typedef int SERIAL_DATA_PACKET_INVERTLINE ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_INVERTLINE ;


 int AssemblePacket (int ,int) ;
 int PACKET_TYPE_INVERTLINE ;
 int SendPacket (int ) ;
 scalar_t__ packet ;

void InvertLineSerial(ULONG line)
{
    PSERIAL_DATA_PACKET_INVERTLINE pInvertLine;
    PSERIAL_PACKET p;

    pInvertLine = (PSERIAL_DATA_PACKET_INVERTLINE)packet;
    pInvertLine->type = PACKET_TYPE_INVERTLINE;
    pInvertLine->line = line;

    p = AssemblePacket((PUCHAR)pInvertLine,sizeof(SERIAL_DATA_PACKET_INVERTLINE));
    SendPacket(p);
}
