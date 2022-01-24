#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_4__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  DIRECTORY_QUERY ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NotificationTimer ; 
 int /*<<< orphan*/  OBJ_OPENIF ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  SECTION_MAP_WRITE ; 
 int /*<<< orphan*/  SEC_COMMIT ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_COLLISION ; 
 int /*<<< orphan*/  STATUS_OBJECT_NAME_EXISTS ; 
 int /*<<< orphan*/  STATUS_OBJECT_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_OBJECT_TYPE_MISMATCH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19(void)
{
    NTSTATUS status;
    UNICODE_STRING str;
    OBJECT_ATTRIBUTES attr;
    HANDLE dir, h, h1, h2;
    DWORD winerr;
    LARGE_INTEGER size;

    FUNC5(&attr, &str, 0, 0, NULL);
    FUNC16(&str, "\\");
    status = FUNC10( &h, DIRECTORY_QUERY, &attr );
    FUNC7( status == STATUS_OBJECT_NAME_COLLISION, "NtCreateDirectoryObject got %08x\n", &status );
    FUNC5(&attr, &str, OBJ_OPENIF, 0, NULL);

    status = FUNC10( &h, DIRECTORY_QUERY, &attr );
    FUNC7( status == STATUS_OBJECT_NAME_EXISTS, "NtCreateDirectoryObject got %08x\n", &status );
    FUNC9(h);
    status = FUNC12(&h, GENERIC_ALL, &attr, FALSE);
    FUNC7(status == STATUS_OBJECT_TYPE_MISMATCH,
        "NtCreateMutant should have failed with STATUS_OBJECT_TYPE_MISMATCH got(%08x)\n", &status);
    FUNC17(&str);

    FUNC16(&str, "\\??\\PIPE\\om.c-mutant");
    status = FUNC12(&h, GENERIC_ALL, &attr, FALSE);
    FUNC7(status == STATUS_OBJECT_TYPE_MISMATCH || status == STATUS_OBJECT_PATH_NOT_FOUND,
        "NtCreateMutant should have failed with STATUS_OBJECT_TYPE_MISMATCH got(%08x)\n", &status);
    FUNC17(&str);

    if (!(dir = FUNC6()))
    {
        FUNC18( "couldn't find the BaseNamedObjects dir\n" );
        return;
    }
    FUNC16(&str, "om.c-test");
    FUNC5(&attr, &str, OBJ_OPENIF, dir, NULL);
    h = FUNC2(NULL, FALSE, "om.c-test");
    FUNC7(h != 0, "CreateMutexA failed got ret=%p (%d)\n", h, FUNC4());
    status = FUNC12(&h1, GENERIC_ALL, &attr, FALSE);
    FUNC7(status == STATUS_OBJECT_NAME_EXISTS && h1 != NULL,
        "NtCreateMutant should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\n", &status);
    h2 = FUNC2(NULL, FALSE, "om.c-test");
    winerr = FUNC4();
    FUNC7(h2 != 0 && winerr == ERROR_ALREADY_EXISTS,
        "CreateMutexA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\n", h2, winerr);
    FUNC9(h);
    FUNC9(h1);
    FUNC9(h2);

    h = FUNC0(NULL, FALSE, FALSE, "om.c-test");
    FUNC7(h != 0, "CreateEventA failed got ret=%p (%d)\n", h, FUNC4());
    status = FUNC11(&h1, GENERIC_ALL, &attr, FALSE, FALSE);
    FUNC7(status == STATUS_OBJECT_NAME_EXISTS && h1 != NULL,
        "NtCreateEvent should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\n", &status);
    h2 = FUNC0(NULL, FALSE, FALSE, "om.c-test");
    winerr = FUNC4();
    FUNC7(h2 != 0 && winerr == ERROR_ALREADY_EXISTS,
        "CreateEventA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\n", h2, winerr);
    FUNC9(h);
    FUNC9(h1);
    FUNC9(h2);

    h = FUNC3(NULL, 1, 2, "om.c-test");
    FUNC7(h != 0, "CreateSemaphoreA failed got ret=%p (%d)\n", h, FUNC4());
    status = FUNC14(&h1, GENERIC_ALL, &attr, 1, 2);
    FUNC7(status == STATUS_OBJECT_NAME_EXISTS && h1 != NULL,
        "NtCreateSemaphore should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\n", &status);
    h2 = FUNC3(NULL, 1, 2, "om.c-test");
    winerr = FUNC4();
    FUNC7(h2 != 0 && winerr == ERROR_ALREADY_EXISTS,
        "CreateSemaphoreA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\n", h2, winerr);
    FUNC9(h);
    FUNC9(h1);
    FUNC9(h2);
    
    h = FUNC8(NULL, TRUE, "om.c-test");
    FUNC7(h != 0, "CreateWaitableTimerA failed got ret=%p (%d)\n", h, FUNC4());
    status = FUNC15(&h1, GENERIC_ALL, &attr, NotificationTimer);
    FUNC7(status == STATUS_OBJECT_NAME_EXISTS && h1 != NULL,
        "NtCreateTimer should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\n", &status);
    h2 = FUNC8(NULL, TRUE, "om.c-test");
    winerr = FUNC4();
    FUNC7(h2 != 0 && winerr == ERROR_ALREADY_EXISTS,
        "CreateWaitableTimerA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\n", h2, winerr);
    FUNC9(h);
    FUNC9(h1);
    FUNC9(h2);

    h = FUNC1(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, 256, "om.c-test");
    FUNC7(h != 0, "CreateFileMappingA failed got ret=%p (%d)\n", h, FUNC4());
    size.u.LowPart = 256;
    size.u.HighPart = 0;
    status = FUNC13(&h1, SECTION_MAP_WRITE, &attr, &size, PAGE_READWRITE, SEC_COMMIT, 0);
    FUNC7(status == STATUS_OBJECT_NAME_EXISTS && h1 != NULL,
        "NtCreateSection should have succeeded with STATUS_OBJECT_NAME_EXISTS got(%08x)\n", &status);
    h2 = FUNC1(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, 256, "om.c-test");
    winerr = FUNC4();
    FUNC7(h2 != 0 && winerr == ERROR_ALREADY_EXISTS,
        "CreateFileMappingA should have succeeded with ERROR_ALREADY_EXISTS got ret=%p (%d)\n", h2, winerr);
    FUNC9(h);
    FUNC9(h1);
    FUNC9(h2);

    FUNC17(&str);
    FUNC9(dir);
}