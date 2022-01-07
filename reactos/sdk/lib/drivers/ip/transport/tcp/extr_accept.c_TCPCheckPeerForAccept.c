
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
struct ip_addr {int addr; } ;
struct TYPE_11__ {int TAAddressCount; TYPE_2__* Address; } ;
struct TYPE_10__ {scalar_t__ RemoteAddress; } ;
struct TYPE_9__ {int RequestFlags; scalar_t__ ReturnConnectionInformation; } ;
struct TYPE_8__ {TYPE_1__* Address; int AddressType; int AddressLength; } ;
struct TYPE_7__ {int in_addr; int sin_port; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_3__* PTDI_REQUEST_KERNEL ;
typedef TYPE_4__* PTDI_CONNECTION_INFORMATION ;
typedef TYPE_5__* PTA_IP_ADDRESS ;
typedef int NTSTATUS ;


 int DbgPrint (char*) ;
 int LibTCPGetPeerName (struct tcp_pcb*,struct ip_addr*,int *) ;
 int TCPTranslateError (int ) ;
 int TDI_ADDRESS_LENGTH_IP ;
 int TDI_ADDRESS_TYPE_IP ;
 int TDI_QUERY_ACCEPT ;

NTSTATUS TCPCheckPeerForAccept(PVOID Context,
                               PTDI_REQUEST_KERNEL Request)
{
    struct tcp_pcb *newpcb = (struct tcp_pcb*)Context;
    NTSTATUS Status;
    PTDI_CONNECTION_INFORMATION WhoIsConnecting;
    PTA_IP_ADDRESS RemoteAddress;
    struct ip_addr ipaddr;

    if (Request->RequestFlags & TDI_QUERY_ACCEPT)
        DbgPrint("TDI_QUERY_ACCEPT NOT SUPPORTED!!!\n");

    WhoIsConnecting = (PTDI_CONNECTION_INFORMATION)Request->ReturnConnectionInformation;
    RemoteAddress = (PTA_IP_ADDRESS)WhoIsConnecting->RemoteAddress;

    RemoteAddress->TAAddressCount = 1;
    RemoteAddress->Address[0].AddressLength = TDI_ADDRESS_LENGTH_IP;
    RemoteAddress->Address[0].AddressType = TDI_ADDRESS_TYPE_IP;

    Status = TCPTranslateError(LibTCPGetPeerName(newpcb,
                                                 &ipaddr,
                                                 &RemoteAddress->Address[0].Address[0].sin_port));

    RemoteAddress->Address[0].Address[0].in_addr = ipaddr.addr;

    return Status;
}
