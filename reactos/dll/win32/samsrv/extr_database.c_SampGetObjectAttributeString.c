
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef void* USHORT ;
typedef int ULONG ;
struct TYPE_3__ {int * Buffer; void* MaximumLength; void* Length; } ;
typedef int * PVOID ;
typedef int PSAM_DB_OBJECT ;
typedef TYPE_1__* PRPC_UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int LPWSTR ;


 int NT_SUCCESS (int) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SampGetObjectAttribute (int ,int ,int *,int *,int*) ;
 int TRACE (char*,int) ;
 int * midl_user_allocate (int) ;
 int midl_user_free (int *) ;

NTSTATUS
SampGetObjectAttributeString(PSAM_DB_OBJECT DbObject,
                             LPWSTR AttributeName,
                             PRPC_UNICODE_STRING String)
{
    ULONG Length = 0;
    NTSTATUS Status;

    Status = SampGetObjectAttribute(DbObject,
                                    AttributeName,
                                    ((void*)0),
                                    ((void*)0),
                                    &Length);
    if (!NT_SUCCESS(Status) && Status != STATUS_BUFFER_OVERFLOW)
    {
        TRACE("Status 0x%08lx\n", Status);
        goto done;
    }

    if (Length == 0)
    {
        String->Length = 0;
        String->MaximumLength = 0;
        String->Buffer = ((void*)0);

        Status = STATUS_SUCCESS;
        goto done;
    }

    String->Length = (USHORT)(Length - sizeof(WCHAR));
    String->MaximumLength = (USHORT)Length;
    String->Buffer = midl_user_allocate(Length);
    if (String->Buffer == ((void*)0))
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    TRACE("Length: %lu\n", Length);
    Status = SampGetObjectAttribute(DbObject,
                                    AttributeName,
                                    ((void*)0),
                                    (PVOID)String->Buffer,
                                    &Length);
    if (!NT_SUCCESS(Status))
    {
        TRACE("Status 0x%08lx\n", Status);
        goto done;
    }

done:
    if (!NT_SUCCESS(Status))
    {
        if (String->Buffer != ((void*)0))
        {
            midl_user_free(String->Buffer);
            String->Buffer = ((void*)0);
        }
    }

    return Status;
}
