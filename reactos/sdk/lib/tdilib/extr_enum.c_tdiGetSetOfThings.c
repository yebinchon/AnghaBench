
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int req ;
struct TYPE_11__ {scalar_t__ Status; scalar_t__ Information; } ;
struct TYPE_8__ {scalar_t__ tei_instance; scalar_t__ tei_entity; } ;
struct TYPE_9__ {TYPE_1__ toi_entity; scalar_t__ toi_id; scalar_t__ toi_type; scalar_t__ toi_class; } ;
struct TYPE_10__ {TYPE_2__ ID; } ;
typedef TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef int * PVOID ;
typedef scalar_t__* PDWORD ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_4__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int IOCTL_TCP_QUERY_INFORMATION_EX ;
 scalar_t__ MAX_TDI_ENTITIES ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtDeviceIoControlFile (int ,int *,int *,int *,TYPE_4__*,int ,TYPE_3__*,int,int *,scalar_t__) ;
 scalar_t__ NtWaitForSingleObject (int ,int ,int *) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_INIT ;
 scalar_t__ TRUE ;

NTSTATUS tdiGetSetOfThings( HANDLE tcpFile,
                            DWORD toiClass,
                            DWORD toiType,
                            DWORD toiId,
                            DWORD teiEntity,
                            DWORD teiInstance,
                            DWORD fixedPart,
                            DWORD entrySize,
                            PVOID *tdiEntitySet,
                            PDWORD numEntries ) {
    TCP_REQUEST_QUERY_INFORMATION_EX req = TCP_REQUEST_QUERY_INFORMATION_INIT;
    PVOID entitySet = 0;
    NTSTATUS status = STATUS_SUCCESS;
    DWORD allocationSizeForEntityArray = entrySize * MAX_TDI_ENTITIES;
    IO_STATUS_BLOCK Iosb;

    req.ID.toi_class = toiClass;
    req.ID.toi_type = toiType;
    req.ID.toi_id = toiId;
    req.ID.toi_entity.tei_entity = teiEntity;
    req.ID.toi_entity.tei_instance = teiInstance;
    do {
        status = NtDeviceIoControlFile( tcpFile,
                                        ((void*)0),
                                        ((void*)0),
                                        ((void*)0),
                                        &Iosb,
                                        IOCTL_TCP_QUERY_INFORMATION_EX,
                                        &req,
                                        sizeof(req),
                                        ((void*)0),
                                        0);
        if (status == STATUS_PENDING)
        {
            status = NtWaitForSingleObject(tcpFile, FALSE, ((void*)0));
            if (NT_SUCCESS(status)) status = Iosb.Status;
        }

        if(!NT_SUCCESS(status))
        {
            return status;
        }

        allocationSizeForEntityArray = Iosb.Information;
        entitySet = HeapAlloc( GetProcessHeap(), 0, allocationSizeForEntityArray );

        if( !entitySet ) {
            status = STATUS_INSUFFICIENT_RESOURCES;
            return status;
        }

        status = NtDeviceIoControlFile( tcpFile,
                                        ((void*)0),
                                        ((void*)0),
                                        ((void*)0),
                                        &Iosb,
                                        IOCTL_TCP_QUERY_INFORMATION_EX,
                                        &req,
                                        sizeof(req),
                                        entitySet,
                                        allocationSizeForEntityArray);
        if (status == STATUS_PENDING)
        {
            status = NtWaitForSingleObject(tcpFile, FALSE, ((void*)0));
            if (NT_SUCCESS(status)) status = Iosb.Status;
        }


        if( Iosb.Information == allocationSizeForEntityArray )
            break;

        HeapFree( GetProcessHeap(), 0, entitySet );
        entitySet = 0;

        if(!NT_SUCCESS(status))
            return status;
    } while( TRUE );


    *numEntries = (allocationSizeForEntityArray - fixedPart) / entrySize;
    *tdiEntitySet = entitySet;

    return STATUS_SUCCESS;
}
