
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UCHAR ;
struct TYPE_4__ {scalar_t__ usCurY; scalar_t__ usCurX; } ;
struct TYPE_3__ {void* y; void* x; void* state; int type; } ;
typedef int SERIAL_DATA_PACKET_CURSOR ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_CURSOR ;


 int AssemblePacket (int ,int) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;
 size_t OUTPUT_WINDOW ;
 int PACKET_TYPE_CURSOR ;
 int SendPacket (int ) ;
 scalar_t__ TRUE ;
 scalar_t__ bCursorEnabled ;
 scalar_t__ packet ;
 TYPE_2__* wWindow ;

void ShowCursorSerial(void)
{
    PSERIAL_DATA_PACKET_CURSOR pCursor;
    PSERIAL_PACKET p;

    ENTER_FUNC();

    bCursorEnabled = TRUE;

    pCursor = (PSERIAL_DATA_PACKET_CURSOR)packet;
    pCursor->type = PACKET_TYPE_CURSOR;
    pCursor->state = (UCHAR)TRUE;
    pCursor->x = (UCHAR)wWindow[OUTPUT_WINDOW].usCurX;
    pCursor->y = (UCHAR)wWindow[OUTPUT_WINDOW].usCurY;

    p = AssemblePacket((PUCHAR)pCursor,sizeof(SERIAL_DATA_PACKET_CURSOR));
    SendPacket(p);

    LEAVE_FUNC();
}
