
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UCHAR ;
struct TYPE_2__ {scalar_t__ state; int type; } ;
typedef int SERIAL_DATA_PACKET_CURSOR ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_CURSOR ;


 int AssemblePacket (int ,int) ;
 int ENTER_FUNC () ;
 int FALSE ;
 int LEAVE_FUNC () ;
 int PACKET_TYPE_CURSOR ;
 int SendPacket (int ) ;
 scalar_t__ TRUE ;
 int bCursorEnabled ;
 scalar_t__ packet ;

void HideCursorSerial(void)
{
    PSERIAL_DATA_PACKET_CURSOR pCursor;
    PSERIAL_PACKET p;

    ENTER_FUNC();

    bCursorEnabled = FALSE;

    pCursor = (PSERIAL_DATA_PACKET_CURSOR)packet;
    pCursor->type = PACKET_TYPE_CURSOR;
    pCursor->state = (UCHAR)TRUE;

    p = AssemblePacket((PUCHAR)pCursor,sizeof(SERIAL_DATA_PACKET_CURSOR));
    SendPacket(p);

    LEAVE_FUNC();
}
