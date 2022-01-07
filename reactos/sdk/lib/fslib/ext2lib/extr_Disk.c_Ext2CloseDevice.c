
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ MediaHandle; } ;
typedef TYPE_1__* PEXT2_FILESYS ;
typedef int NTSTATUS ;


 int NtClose (scalar_t__) ;
 int STATUS_SUCCESS ;

NTSTATUS
Ext2CloseDevice( PEXT2_FILESYS Ext2Sys)
{
    NTSTATUS Status = STATUS_SUCCESS;

    if(Ext2Sys->MediaHandle)
    {
        Status = NtClose(Ext2Sys->MediaHandle);
    }

    return Status;
}
