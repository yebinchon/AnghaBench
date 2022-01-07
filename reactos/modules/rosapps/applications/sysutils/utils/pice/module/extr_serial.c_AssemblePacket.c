
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int packet_size; int packet_header_chksum; scalar_t__ packet_chksum; } ;
struct TYPE_5__ {int data; TYPE_1__ header; } ;
typedef int SERIAL_PACKET_HEADER ;
typedef int PUCHAR ;
typedef TYPE_2__* PSERIAL_PACKET ;


 scalar_t__ CheckSum (int ,int) ;
 int PICE_memcpy (int ,int ,int) ;
 scalar_t__ assemble_packet ;

PSERIAL_PACKET AssemblePacket(PUCHAR pData,ULONG ulSize)
{
    PSERIAL_PACKET p;
    ULONG ulCheckSum;

    p = (PSERIAL_PACKET)assemble_packet;


    p->header.packet_chksum = CheckSum(pData,ulSize);
    p->header.packet_size = ulSize;
    p->header.packet_header_chksum = 0;
    ulCheckSum = (ULONG)CheckSum((PUCHAR)p,sizeof(SERIAL_PACKET_HEADER));
    p->header.packet_header_chksum = ulCheckSum;

    PICE_memcpy(p->data,pData,ulSize);

    return p;
}
