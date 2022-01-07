
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int line; int bkcol; int fgcol; int type; } ;
typedef int SERIAL_DATA_PACKET_CLRLINE ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_CLRLINE ;


 int AssemblePacket (int ,int) ;
 int PACKET_TYPE_CLRLINE ;
 int SendPacket (int ) ;
 int eBackgroundColor ;
 int eForegroundColor ;
 scalar_t__ packet ;

void ClrLineSerial(ULONG line)
{
    PSERIAL_DATA_PACKET_CLRLINE pClrLine;
    PSERIAL_PACKET p;

    pClrLine = (PSERIAL_DATA_PACKET_CLRLINE)packet;
    pClrLine->type = PACKET_TYPE_CLRLINE;
    pClrLine->fgcol = eForegroundColor;
    pClrLine->bkcol = eBackgroundColor;
    pClrLine->line = line;

    p = AssemblePacket((PUCHAR)pClrLine,sizeof(SERIAL_DATA_PACKET_CLRLINE));
    SendPacket(p);
}
