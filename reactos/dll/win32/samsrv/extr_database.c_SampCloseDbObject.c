
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ RefCount; struct TYPE_4__* Name; int MembersKeyHandle; int KeyHandle; } ;
typedef TYPE_1__* PSAM_DB_OBJECT ;
typedef int NTSTATUS ;


 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;
 int STATUS_SUCCESS ;
 int SampRegCloseKey (int *) ;

NTSTATUS
SampCloseDbObject(PSAM_DB_OBJECT DbObject)
{
    NTSTATUS Status = STATUS_SUCCESS;

    DbObject->RefCount--;

    if (DbObject->RefCount > 0)
        return STATUS_SUCCESS;

    SampRegCloseKey(&DbObject->KeyHandle);
    SampRegCloseKey(&DbObject->MembersKeyHandle);

    if (DbObject->Name != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, DbObject->Name);

    RtlFreeHeap(RtlGetProcessHeap(), 0, DbObject);

    return Status;
}
