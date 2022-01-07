
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Status; } ;
struct TYPE_5__ {int MediaHandle; } ;
typedef int PUNICODE_STRING ;
typedef TYPE_1__* PEXT2_FILESYS ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef TYPE_2__ IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int DPRINT1 (char*,int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_OPEN ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int InitializeObjectAttributes (int *,int ,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtCreateFile (int *,int,int *,TYPE_2__*,int ,int ,int,int ,int ,int *,int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int SYNCHRONIZE ;

NTSTATUS
Ext2OpenDevice( PEXT2_FILESYS Ext2Sys,
                 PUNICODE_STRING DeviceName )
{
    NTSTATUS Status;
    OBJECT_ATTRIBUTES ObjectAttributes;
    HANDLE FileHandle;
    IO_STATUS_BLOCK Iosb;





    InitializeObjectAttributes(&ObjectAttributes,
                               DeviceName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0) );





    Status = NtCreateFile(&FileHandle,
                          (GENERIC_READ | GENERIC_WRITE | SYNCHRONIZE),
                          &ObjectAttributes,
                          &Iosb,
                          0,
                          FILE_ATTRIBUTE_NORMAL,
                          FILE_SHARE_WRITE | FILE_SHARE_READ,
                          FILE_OPEN ,
                          FILE_SYNCHRONOUS_IO_NONALERT,
                          ((void*)0),
                          0);




    if( !NT_SUCCESS(Status) )
    {
        DPRINT1("Mke2fs: Create system service failed status = 0x%lx\n", Status);
        return Status;
    }





    if(!NT_SUCCESS(Iosb.Status) )
    {
        DPRINT1("Mke2fs: Create failed with status = 0x%lx\n",Iosb.Status);
        return Status;
    }

    Ext2Sys->MediaHandle = FileHandle;

    return Status;
}
