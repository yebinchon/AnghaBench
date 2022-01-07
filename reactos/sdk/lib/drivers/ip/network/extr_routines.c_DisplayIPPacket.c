
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_3__ {int HeaderSize; int Header; int NdisPacket; int TotalSize; } ;
typedef TYPE_1__* PIP_PACKET ;
typedef int PCHAR ;
typedef scalar_t__ NTSTATUS ;


 int DEBUG_IP ;
 int DEBUG_PBUFFER ;
 int DPFLTR_MASK ;
 int DPFLTR_TCPIP_ID ;
 scalar_t__ DbgQueryDebugFilterState (int ,int) ;
 int DisplayIPHeader (int ,int ) ;
 int MIN_TRACE ;
 int TI_DbgPrint (int ,char*) ;
 scalar_t__ TRUE ;

VOID DisplayIPPacket(
    PIP_PACKET IPPacket)
{
}
