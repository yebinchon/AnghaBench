
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; int bkcol; int fgcol; int y; int x; int type; } ;
typedef int SERIAL_DATA_PACKET_PRINT ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_PRINT ;


 int AssemblePacket (int ,scalar_t__) ;
 int PACKET_TYPE_PRINT ;
 int PICE_strcpy (int ,scalar_t__*) ;
 scalar_t__ PICE_strlen (scalar_t__*) ;
 int SendPacket (int ) ;
 int eBackgroundColor ;
 int eForegroundColor ;
 scalar_t__* flush_buffer ;
 int g_x ;
 int g_y ;
 scalar_t__ packet ;
 scalar_t__ ulFlushBufferPos ;

void FlushSerial(void)
{
    PSERIAL_DATA_PACKET_PRINT pPrint;
    PSERIAL_PACKET p;

    pPrint = (PSERIAL_DATA_PACKET_PRINT)packet;
    pPrint->type = PACKET_TYPE_PRINT;
    pPrint->x = g_x;
    pPrint->y = g_y;
    pPrint->fgcol = eForegroundColor;
    pPrint->bkcol = eBackgroundColor;
    flush_buffer[ulFlushBufferPos++] = 0;
    PICE_strcpy(pPrint->string,flush_buffer);
    ulFlushBufferPos = 0;

    p = AssemblePacket((PUCHAR)pPrint,sizeof(SERIAL_DATA_PACKET_PRINT)+PICE_strlen(flush_buffer));
    SendPacket(p);
}
