
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ RefCount; struct TYPE_4__* ParentObject; int * KeyHandle; } ;
typedef TYPE_1__* PLSA_DB_OBJECT ;
typedef int NTSTATUS ;


 int NtClose (int *) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;
 int STATUS_SUCCESS ;

NTSTATUS
LsapCloseDbObject(PLSA_DB_OBJECT DbObject)
{
    PLSA_DB_OBJECT ParentObject = ((void*)0);
    NTSTATUS Status = STATUS_SUCCESS;

    DbObject->RefCount--;

    if (DbObject->RefCount > 0)
        return STATUS_SUCCESS;

    if (DbObject->KeyHandle != ((void*)0))
        NtClose(DbObject->KeyHandle);

    if (DbObject->ParentObject != ((void*)0))
        ParentObject = DbObject->ParentObject;

    RtlFreeHeap(RtlGetProcessHeap(), 0, DbObject);

    if (ParentObject != ((void*)0))
    {
        ParentObject->RefCount--;

        if (ParentObject->RefCount == 0)
            Status = LsapCloseDbObject(ParentObject);
    }

    return Status;
}
