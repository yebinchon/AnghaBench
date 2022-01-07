
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ toi_type; int toi_id; } ;
typedef int TDI_STATUS ;
typedef TYPE_1__ TDIObjectID ;
typedef scalar_t__ PVOID ;
typedef int PCONNECTION_ENDPOINT ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int DbgPrint (char*,int) ;
 scalar_t__ INFO_TYPE_CONNECTION ;
 int TCPSetNoDelay (int ,int ) ;

 int TDI_INVALID_PARAMETER ;

TDI_STATUS SetConnectionInfo(TDIObjectID *ID,
                             PCONNECTION_ENDPOINT Connection,
                             PVOID Buffer,
                             UINT BufferSize)
{
    ASSERT(ID->toi_type == INFO_TYPE_CONNECTION);
    switch (ID->toi_id)
    {
        case 128:
        {
            BOOLEAN Set;
            if (BufferSize < sizeof(BOOLEAN))
                return TDI_INVALID_PARAMETER;
            Set = *(BOOLEAN*)Buffer;
            return TCPSetNoDelay(Connection, Set);
        }
        default:
            DbgPrint("TCPIP: Unknown connection info ID: %u.\n", ID->toi_id);
    }

    return TDI_INVALID_PARAMETER;
}
