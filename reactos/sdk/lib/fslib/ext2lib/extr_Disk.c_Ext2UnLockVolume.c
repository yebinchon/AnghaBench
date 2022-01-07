
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MediaHandle; } ;
typedef TYPE_1__* PEXT2_FILESYS ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;


 int DPRINT1 (char*) ;
 int FSCTL_UNLOCK_VOLUME ;
 int NT_SUCCESS (int ) ;
 int NtFsControlFile (int ,int *,int *,int *,int *,int ,int *,int ,int *,int ) ;

NTSTATUS
Ext2UnLockVolume( PEXT2_FILESYS Ext2Sys )
{
    NTSTATUS Status;
    IO_STATUS_BLOCK IoSb;

    Status = NtFsControlFile( Ext2Sys->MediaHandle,
                              ((void*)0), ((void*)0), ((void*)0), &IoSb,
                              FSCTL_UNLOCK_VOLUME,
                              ((void*)0), 0, ((void*)0), 0 );

    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Mke2fs: Error when unlocking volume ...\n");
        goto errorout;
    }

errorout:

    return Status;
}
