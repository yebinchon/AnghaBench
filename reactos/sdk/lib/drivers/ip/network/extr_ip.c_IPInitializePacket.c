
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int Type; int Free; } ;
typedef TYPE_1__* PIP_PACKET ;
typedef int IP_PACKET ;


 int DeinitializePacket ;
 int RtlZeroMemory (TYPE_1__*,int) ;

PIP_PACKET IPInitializePacket(
    PIP_PACKET IPPacket,
    ULONG Type)







{
    RtlZeroMemory(IPPacket, sizeof(IP_PACKET));

    IPPacket->Free = DeinitializePacket;
    IPPacket->Type = Type;

    return IPPacket;
}
