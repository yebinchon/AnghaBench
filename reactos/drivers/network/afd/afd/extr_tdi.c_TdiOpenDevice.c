
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int PVOID ;
typedef int PUNICODE_STRING ;
typedef int * PHANDLE ;
typedef int * PFILE_OBJECT ;
typedef int PFILE_FULL_EA_INFORMATION ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;


 int AFD_DbgPrint (int ,char*) ;
 scalar_t__ AFD_SHARE_REUSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_OPEN_IF ;
 scalar_t__ FILE_SHARE_READ ;
 scalar_t__ FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int INVALID_HANDLE_VALUE ;
 int InitializeObjectAttributes (int *,int ,int,int *,int *) ;
 int * IoFileObjectType ;
 int KernelMode ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int OBJ_KERNEL_HANDLE ;
 int ObReferenceObjectByHandle (int ,int,int ,int ,int *,int *) ;
 int SYNCHRONIZE ;
 int ZwClose (int ) ;
 int ZwCreateFile (int *,int,int *,int *,int ,int ,scalar_t__,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static NTSTATUS TdiOpenDevice(
    PUNICODE_STRING DeviceName,
    ULONG EaLength,
    PFILE_FULL_EA_INFORMATION EaInfo,
    ULONG ShareType,
    PHANDLE Handle,
    PFILE_OBJECT *Object)
{
    OBJECT_ATTRIBUTES Attr;
    IO_STATUS_BLOCK Iosb;
    NTSTATUS Status;
    ULONG ShareAccess;

    AFD_DbgPrint(MAX_TRACE, ("Called. DeviceName (%wZ, %u)\n", DeviceName, ShareType));


    if (ShareType != AFD_SHARE_REUSE)
    {

        ShareAccess = 0;
    }
    else
    {

        ShareAccess = FILE_SHARE_READ | FILE_SHARE_WRITE;
    }

    InitializeObjectAttributes(&Attr,
                               DeviceName,
                               OBJ_CASE_INSENSITIVE |
                               OBJ_KERNEL_HANDLE,
                               ((void*)0),
                               ((void*)0));

    Status = ZwCreateFile(Handle,
                          GENERIC_READ | GENERIC_WRITE | SYNCHRONIZE,
                          &Attr,
                          &Iosb,
                          0,
                          FILE_ATTRIBUTE_NORMAL,
                          ShareAccess,
                          FILE_OPEN_IF,
                          0,
                          EaInfo,
                          EaLength);
    if (NT_SUCCESS(Status)) {
        Status = ObReferenceObjectByHandle(*Handle,
                                           GENERIC_READ | GENERIC_WRITE | SYNCHRONIZE,
                                           *IoFileObjectType,
                                           KernelMode,
                                           (PVOID*)Object,
                                           ((void*)0));
        if (!NT_SUCCESS(Status)) {
            AFD_DbgPrint(MIN_TRACE, ("ObReferenceObjectByHandle() failed with status (0x%X).\n", Status));
            ZwClose(*Handle);
        } else {
            AFD_DbgPrint(MAX_TRACE, ("Got handle (%p)  Object (%p)\n",
                                     *Handle, *Object));
        }
    } else {
        AFD_DbgPrint(MIN_TRACE, ("ZwCreateFile() failed with status (0x%X)\n", Status));
    }

    if (!NT_SUCCESS(Status)) {
        *Handle = INVALID_HANDLE_VALUE;
        *Object = ((void*)0);
    }

    return Status;
}
