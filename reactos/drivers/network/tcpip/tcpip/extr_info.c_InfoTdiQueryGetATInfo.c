
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__ Index; } ;
typedef int TDI_STATUS ;
typedef int TDIEntityID ;
typedef int* PUINT ;
typedef int PNDIS_BUFFER ;
typedef TYPE_1__* PIP_INTERFACE ;
typedef int PCHAR ;
typedef int ATInfo ;


 int DEBUG_INFO ;
 int InfoCopyOut (int ,int,int ,int*) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int TDI_INVALID_PARAMETER ;
 int TI_DbgPrint (int ,char*) ;

TDI_STATUS
InfoTdiQueryGetATInfo(
    TDIEntityID ID,
    PIP_INTERFACE Interface,
    PNDIS_BUFFER Buffer,
    PUINT BufferSize)
{
    ULONG ATInfo[2];
    TDI_STATUS Status;

    TI_DbgPrint(DEBUG_INFO, ("Called.\n"));

    if (!Interface)
        return TDI_INVALID_PARAMETER;

    if (*BufferSize < sizeof(ATInfo))
        return STATUS_BUFFER_TOO_SMALL;


    ATInfo[0] = 0;
    ATInfo[1] = Interface->Index;

    Status = InfoCopyOut((PCHAR)ATInfo,
                         sizeof(ATInfo),
                         Buffer,
                         BufferSize);

    TI_DbgPrint(DEBUG_INFO, ("Returning %08x\n", Status));

    return Status;
}
