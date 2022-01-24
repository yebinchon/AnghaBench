#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  void* USHORT ;
typedef  int ULONG ;
struct TYPE_3__ {int /*<<< orphan*/ * Buffer; void* MaximumLength; void* Length; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PSAM_DB_OBJECT ;
typedef  TYPE_1__* PRPC_UNICODE_STRING ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STATUS_BUFFER_OVERFLOW ; 
 int STATUS_INSUFFICIENT_RESOURCES ; 
 int STATUS_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

NTSTATUS
FUNC5(PSAM_DB_OBJECT DbObject,
                             LPWSTR AttributeName,
                             PRPC_UNICODE_STRING String)
{
    ULONG Length = 0;
    NTSTATUS Status;

    Status = FUNC1(DbObject,
                                    AttributeName,
                                    NULL,
                                    NULL,
                                    &Length);
    if (!FUNC0(Status) && Status != STATUS_BUFFER_OVERFLOW)
    {
        FUNC2("Status 0x%08lx\n", Status);
        goto done;
    }

    if (Length == 0)
    {
        String->Length = 0;
        String->MaximumLength = 0;
        String->Buffer = NULL;

        Status = STATUS_SUCCESS;
        goto done;
    }

    String->Length = (USHORT)(Length - sizeof(WCHAR));
    String->MaximumLength = (USHORT)Length;
    String->Buffer = FUNC3(Length);
    if (String->Buffer == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    FUNC2("Length: %lu\n", Length);
    Status = FUNC1(DbObject,
                                    AttributeName,
                                    NULL,
                                    (PVOID)String->Buffer,
                                    &Length);
    if (!FUNC0(Status))
    {
        FUNC2("Status 0x%08lx\n", Status);
        goto done;
    }

done:
    if (!FUNC0(Status))
    {
        if (String->Buffer != NULL)
        {
            FUNC4(String->Buffer);
            String->Buffer = NULL;
        }
    }

    return Status;
}