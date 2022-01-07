
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_9__ {scalar_t__* OwningModuleInfo; scalar_t__ dwFlags; int liCreateTimestamp; int dwOwningPid; int dwLocalPort; int dwLocalAddr; } ;
struct TYPE_6__ {int IPv4Address; } ;
struct TYPE_7__ {TYPE_1__ Address; } ;
struct TYPE_8__ {scalar_t__ SubProcessTag; int CreationTime; int ProcessId; int Port; TYPE_2__ Address; } ;
typedef scalar_t__ TDI_TCPUDP_CLASS_INFO ;
typedef int TDI_STATUS ;
typedef int SIZE_T ;
typedef int PUINT ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;
typedef TYPE_3__* PADDRESS_FILE ;
typedef int MIB_UDPROW_OWNER_PID ;
typedef TYPE_4__ MIB_UDPROW_OWNER_MODULE ;
typedef int MIB_UDPROW ;


 int DEBUG_INFO ;
 int HandleToUlong (int ) ;
 int InfoCopyOut (int ,int,int ,int ) ;
 int RtlZeroMemory (scalar_t__*,int) ;
 int TDI_INVALID_REQUEST ;
 int TI_DbgPrint (int ,char*) ;
 scalar_t__ TcpUdpClassOwner ;
 scalar_t__ TcpUdpClassOwnerPid ;

TDI_STATUS InfoTdiQueryGetConnectionUdpTable(PADDRESS_FILE AddrFile,
        PNDIS_BUFFER Buffer,
        PUINT BufferSize,
        TDI_TCPUDP_CLASS_INFO Class)
{
    SIZE_T Size;
    MIB_UDPROW_OWNER_MODULE UdpRow;
    TDI_STATUS Status = TDI_INVALID_REQUEST;

    TI_DbgPrint(DEBUG_INFO, ("Called.\n"));

    if (Class == TcpUdpClassOwnerPid)
    {
        Size = sizeof(MIB_UDPROW_OWNER_PID);
    }
    else if (Class == TcpUdpClassOwner)
    {
        Size = sizeof(MIB_UDPROW_OWNER_MODULE);
    }
    else
    {
        Size = sizeof(MIB_UDPROW);
    }

    UdpRow.dwLocalAddr = AddrFile->Address.Address.IPv4Address;
    UdpRow.dwLocalPort = AddrFile->Port;
    UdpRow.dwOwningPid = HandleToUlong(AddrFile->ProcessId);
    UdpRow.liCreateTimestamp = AddrFile->CreationTime;
    UdpRow.dwFlags = 0;
    if (Class == TcpUdpClassOwner)
    {
        RtlZeroMemory(&UdpRow.OwningModuleInfo[0], sizeof(UdpRow.OwningModuleInfo));
        UdpRow.OwningModuleInfo[0] = (ULONG_PTR)AddrFile->SubProcessTag;
    }

    Status = InfoCopyOut( (PCHAR)&UdpRow,
     Size, Buffer, BufferSize );

    TI_DbgPrint(DEBUG_INFO, ("Returning %08x\n", Status));

    return Status;
}
