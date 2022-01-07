
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int Extra; int VertCounter; int HorzCounter; int Flags; } ;
typedef TYPE_1__* PMOUSE_PACKET ;


 int MouseId ;
 int MousePS2Port ;
 int PS2QueuePush (int ,int ) ;

__attribute__((used)) static VOID MouseDispatchPacket(PMOUSE_PACKET Packet)
{
    PS2QueuePush(MousePS2Port, Packet->Flags);
    PS2QueuePush(MousePS2Port, Packet->HorzCounter);
    PS2QueuePush(MousePS2Port, Packet->VertCounter);
    if (MouseId >= 3) PS2QueuePush(MousePS2Port, Packet->Extra);
}
