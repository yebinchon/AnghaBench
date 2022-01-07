
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PartInfo; int MediaHandle; int DiskGeometry; } ;
typedef TYPE_1__* PEXT2_FILESYS ;
typedef int PARTITION_INFORMATION ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int DISK_GEOMETRY ;


 int IOCTL_DISK_GET_DRIVE_GEOMETRY ;
 int IOCTL_DISK_GET_PARTITION_INFO ;
 int NT_SUCCESS (int ) ;
 int NtDeviceIoControlFile (int ,int *,int *,int *,int *,int ,int *,int,int *,int) ;

NTSTATUS
Ext2GetMediaInfo( PEXT2_FILESYS Ext2Sys )
{
    NTSTATUS Status;
    IO_STATUS_BLOCK IoSb;

    Status = NtDeviceIoControlFile( Ext2Sys->MediaHandle,
                                ((void*)0), ((void*)0), ((void*)0), &IoSb,
                                IOCTL_DISK_GET_DRIVE_GEOMETRY,
                                &(Ext2Sys->DiskGeometry), sizeof(DISK_GEOMETRY),
                                &(Ext2Sys->DiskGeometry), sizeof(DISK_GEOMETRY));


    if (!NT_SUCCESS(Status))
    {
        goto errorout;
    }

    Status = NtDeviceIoControlFile( Ext2Sys->MediaHandle,
                                ((void*)0), ((void*)0), ((void*)0), &IoSb,
                                IOCTL_DISK_GET_PARTITION_INFO,
                                &(Ext2Sys->PartInfo), sizeof(PARTITION_INFORMATION),
                                &(Ext2Sys->PartInfo), sizeof(PARTITION_INFORMATION));

    if (!NT_SUCCESS(Status))
    {
        goto errorout;
    }

errorout:

    return Status;
}
