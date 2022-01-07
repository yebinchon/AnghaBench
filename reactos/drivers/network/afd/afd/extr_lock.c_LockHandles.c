
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {scalar_t__ Handle; int Events; scalar_t__ Status; } ;
typedef int PVOID ;
typedef TYPE_1__* PAFD_HANDLE ;
typedef int NTSTATUS ;
typedef int AFD_HANDLE ;


 int AFD_DbgPrint (int ,char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int FILE_ALL_ACCESS ;
 int KernelMode ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ObReferenceObjectByHandle (int ,int ,int *,int ,int *,int *) ;
 int STATUS_SUCCESS ;
 int TAG_AFD_POLL_HANDLE ;
 int UnlockHandles (TYPE_1__*,int) ;

PAFD_HANDLE LockHandles( PAFD_HANDLE HandleArray, UINT HandleCount ) {
    UINT i;
    NTSTATUS Status = STATUS_SUCCESS;

    PAFD_HANDLE FileObjects = ExAllocatePoolWithTag(NonPagedPool,
                                                    HandleCount * sizeof(AFD_HANDLE),
                                                    TAG_AFD_POLL_HANDLE);

    for( i = 0; FileObjects && i < HandleCount; i++ ) {
        FileObjects[i].Status = 0;
        FileObjects[i].Events = HandleArray[i].Events;
        FileObjects[i].Handle = 0;
        if( !HandleArray[i].Handle ) continue;
        if( NT_SUCCESS(Status) ) {
                Status = ObReferenceObjectByHandle
                    ( (PVOID)HandleArray[i].Handle,
                      FILE_ALL_ACCESS,
                      ((void*)0),
                       KernelMode,
                       (PVOID*)&FileObjects[i].Handle,
                       ((void*)0) );
        }

        if( !NT_SUCCESS(Status) )
        {
            AFD_DbgPrint(MIN_TRACE,("Failed to reference handles (0x%x)\n", Status));
            FileObjects[i].Handle = 0;
        }
    }

    if( !NT_SUCCESS(Status) ) {
        UnlockHandles( FileObjects, HandleCount );
        return ((void*)0);
    }

    return FileObjects;
}
