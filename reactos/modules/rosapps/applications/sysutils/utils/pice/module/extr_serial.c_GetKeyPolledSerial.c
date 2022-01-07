
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UCHAR ;
struct TYPE_2__ {int build_number; int minor_version; int major_version; int type; } ;
typedef int SERIAL_DATA_PACKET_POLL ;
typedef int PUCHAR ;
typedef int PSERIAL_PACKET ;
typedef TYPE_1__* PSERIAL_DATA_PACKET_POLL ;


 int AssemblePacket (int ,int) ;
 int PACKET_TYPE_POLL ;
 int PICE_BUILD ;
 int PICE_MAJOR_VERSION ;
 int PICE_MINOR_VERSION ;
 int SendPacket (int ) ;
 scalar_t__ packet ;
 scalar_t__ ucLastKeyRead ;

UCHAR GetKeyPolledSerial(void)
{
    UCHAR ucResult;
    PSERIAL_DATA_PACKET_POLL pPoll;
    PSERIAL_PACKET p;

    pPoll = (PSERIAL_DATA_PACKET_POLL)packet;
    pPoll->type = PACKET_TYPE_POLL;
    pPoll->major_version = PICE_MAJOR_VERSION;
    pPoll->minor_version = PICE_MINOR_VERSION;
    pPoll->build_number = PICE_BUILD;

    p = AssemblePacket((PUCHAR)pPoll,sizeof(SERIAL_DATA_PACKET_POLL));
    SendPacket(p);

    ucResult = ucLastKeyRead;

    ucLastKeyRead = 0;

    return ucResult;
}
