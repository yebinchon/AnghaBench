
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_20__ {int * SocketContext; } ;
struct TYPE_19__ {scalar_t__* OwningModuleInfo; int dwState; void* dwRemotePort; int dwRemoteAddr; void* dwLocalPort; int dwLocalAddr; int liCreateTimestamp; int dwOwningPid; } ;
struct TYPE_13__ {int IPv4Address; } ;
struct TYPE_14__ {TYPE_2__ Address; } ;
struct TYPE_18__ {scalar_t__ SubProcessTag; TYPE_9__* Connection; void* Port; TYPE_3__ Address; TYPE_1__* Listener; int CreationTime; int ProcessId; } ;
struct TYPE_17__ {int TAAddressCount; TYPE_5__* Address; } ;
struct TYPE_16__ {scalar_t__ AddressLength; TYPE_4__* Address; } ;
struct TYPE_15__ {int sin_port; int in_addr; } ;
struct TYPE_12__ {TYPE_7__* AddressFile; } ;
typedef scalar_t__ TDI_TCPUDP_CLASS_INFO ;
typedef int TDI_STATUS ;
typedef TYPE_6__ TA_IP_ADDRESS ;
typedef int SIZE_T ;
typedef int PUINT ;
typedef int PTRANSPORT_ADDRESS ;
typedef int PNDIS_BUFFER ;
typedef int PCHAR ;
typedef TYPE_7__* PADDRESS_FILE ;
typedef int MIB_TCPROW_OWNER_PID ;
typedef TYPE_8__ MIB_TCPROW_OWNER_MODULE ;
typedef int MIB_TCPROW ;


 int ASSERT (int) ;
 int DEBUG_INFO ;
 int FALSE ;
 int HandleToUlong (int ) ;
 int InfoCopyOut (int ,int,int ,int ) ;
 int MIB_TCP_STATE_LISTEN ;
 int NT_SUCCESS (int ) ;
 int RtlZeroMemory (scalar_t__*,int) ;
 int TCPGetSockAddress (TYPE_9__*,int ,int ) ;
 int TCPGetSocketStatus (TYPE_9__*,int *) ;
 scalar_t__ TDI_ADDRESS_LENGTH_IP ;
 int TDI_INVALID_REQUEST ;
 int TDI_SUCCESS ;
 int TI_DbgPrint (int ,char*) ;
 int TRUE ;
 scalar_t__ TcpUdpClassOwner ;
 scalar_t__ TcpUdpClassOwnerPid ;
 void* ntohs (int ) ;

TDI_STATUS InfoTdiQueryGetConnectionTcpTable(PADDRESS_FILE AddrFile,
        PNDIS_BUFFER Buffer,
        PUINT BufferSize,
                    TDI_TCPUDP_CLASS_INFO Class)
{
    SIZE_T Size;
    MIB_TCPROW_OWNER_MODULE TcpRow;
    TDI_STATUS Status = TDI_INVALID_REQUEST;

    TI_DbgPrint(DEBUG_INFO, ("Called.\n"));

    if (Class == TcpUdpClassOwnerPid)
    {
        Size = sizeof(MIB_TCPROW_OWNER_PID);
    }
    else if (Class == TcpUdpClassOwner)
    {
        Size = sizeof(MIB_TCPROW_OWNER_MODULE);
    }
    else
    {
        Size = sizeof(MIB_TCPROW);
    }

    TcpRow.dwOwningPid = HandleToUlong(AddrFile->ProcessId);
    TcpRow.liCreateTimestamp = AddrFile->CreationTime;

    if (AddrFile->Listener != ((void*)0))
    {
        PADDRESS_FILE EndPoint;

        EndPoint = AddrFile->Listener->AddressFile;

        TcpRow.dwState = MIB_TCP_STATE_LISTEN;
        TcpRow.dwLocalAddr = AddrFile->Address.Address.IPv4Address;
        TcpRow.dwLocalPort = AddrFile->Port;
        TcpRow.dwRemoteAddr = EndPoint->Address.Address.IPv4Address;
        TcpRow.dwRemotePort = EndPoint->Port;

        Status = TDI_SUCCESS;
    }
    else if (AddrFile->Connection != ((void*)0) &&
             AddrFile->Connection->SocketContext != ((void*)0))
    {
        TA_IP_ADDRESS EndPoint;

        Status = TCPGetSockAddress(AddrFile->Connection, (PTRANSPORT_ADDRESS)&EndPoint, FALSE);
        if (NT_SUCCESS(Status))
        {
            ASSERT(EndPoint.TAAddressCount >= 1);
            ASSERT(EndPoint.Address[0].AddressLength == TDI_ADDRESS_LENGTH_IP);
            TcpRow.dwLocalAddr = EndPoint.Address[0].Address[0].in_addr;
            TcpRow.dwLocalPort = ntohs(EndPoint.Address[0].Address[0].sin_port);

            Status = TCPGetSockAddress(AddrFile->Connection, (PTRANSPORT_ADDRESS)&EndPoint, TRUE);
            if (NT_SUCCESS(Status))
            {
                ASSERT(EndPoint.TAAddressCount >= 1);
                ASSERT(EndPoint.Address[0].AddressLength == TDI_ADDRESS_LENGTH_IP);
                TcpRow.dwRemoteAddr = EndPoint.Address[0].Address[0].in_addr;
                TcpRow.dwRemotePort = ntohs(EndPoint.Address[0].Address[0].sin_port);

                Status = TCPGetSocketStatus(AddrFile->Connection, &TcpRow.dwState);
                ASSERT(NT_SUCCESS(Status));
            }
        }
    }

    if (NT_SUCCESS(Status))
    {
        if (Class == TcpUdpClassOwner)
        {
            RtlZeroMemory(&TcpRow.OwningModuleInfo[0], sizeof(TcpRow.OwningModuleInfo));
            TcpRow.OwningModuleInfo[0] = (ULONG_PTR)AddrFile->SubProcessTag;
        }

        Status = InfoCopyOut( (PCHAR)&TcpRow, Size,
                              Buffer, BufferSize );
    }

    TI_DbgPrint(DEBUG_INFO, ("Returning %08x\n", Status));

    return Status;
}
