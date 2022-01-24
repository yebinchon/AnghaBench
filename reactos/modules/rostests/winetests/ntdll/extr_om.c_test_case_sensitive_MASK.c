#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_6__ {scalar_t__ Attributes; } ;
typedef  TYPE_1__ OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 scalar_t__ STATUS_OBJECT_NAME_COLLISION ; 
 scalar_t__ STATUS_OBJECT_PATH_NOT_FOUND ; 
 scalar_t__ STATUS_OBJECT_TYPE_MISMATCH ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC7 (void)
{
    static const WCHAR buffer1[] = {'\\','B','a','s','e','N','a','m','e','d','O','b','j','e','c','t','s','\\','t','e','s','t',0};
    static const WCHAR buffer2[] = {'\\','B','a','s','e','N','a','m','e','d','O','b','j','e','c','t','s','\\','T','e','s','t',0};
    static const WCHAR buffer3[] = {'\\','B','a','s','e','N','a','m','e','d','O','b','j','e','c','t','s','\\','T','E','s','t',0};
    static const WCHAR buffer4[] = {'\\','B','A','S','E','N','a','m','e','d','O','b','j','e','c','t','s','\\','t','e','s','t',0};
    NTSTATUS status;
    OBJECT_ATTRIBUTES attr;
    UNICODE_STRING str;
    HANDLE Event, Mutant, h;

    FUNC6(&str, buffer1);
    FUNC0(&attr, &str, 0, 0, NULL);
    status = FUNC4(&Mutant, GENERIC_ALL, &attr, FALSE);
    FUNC1(status == STATUS_SUCCESS, "Failed to create Mutant(%08x)\n", status);

    status = FUNC3(&Event, GENERIC_ALL, &attr, FALSE, FALSE);
    FUNC1(status == STATUS_OBJECT_NAME_COLLISION || status == STATUS_OBJECT_TYPE_MISMATCH,
        "NtCreateEvent should have failed with STATUS_OBJECT_NAME_COLLISION or STATUS_OBJECT_TYPE_MISMATCH got (%08x)\n", status);

    FUNC6(&str, buffer2);
    FUNC0(&attr, &str, 0, 0, NULL);
    status = FUNC3(&Event, GENERIC_ALL, &attr, FALSE, FALSE);
    FUNC1(status == STATUS_SUCCESS, "Failed to create Event(%08x)\n", status);

    FUNC6(&str, buffer3);
    FUNC0(&attr, &str, OBJ_CASE_INSENSITIVE, 0, NULL);
    status = FUNC5(&h, GENERIC_ALL, &attr);
    FUNC1(status == STATUS_OBJECT_TYPE_MISMATCH,
        "NtOpenMutant should have failed with STATUS_OBJECT_TYPE_MISMATCH got(%08x)\n", status);

    FUNC2(Mutant);

    FUNC6(&str, buffer4);
    FUNC0(&attr, &str, OBJ_CASE_INSENSITIVE, 0, NULL);
    status = FUNC4(&Mutant, GENERIC_ALL, &attr, FALSE);
    FUNC1(status == STATUS_OBJECT_NAME_COLLISION || status == STATUS_OBJECT_TYPE_MISMATCH,
        "NtCreateMutant should have failed with STATUS_OBJECT_NAME_COLLISION or STATUS_OBJECT_TYPE_MISMATCH got (%08x)\n", status);

    status = FUNC3(&h, GENERIC_ALL, &attr, FALSE, FALSE);
    FUNC1(status == STATUS_OBJECT_NAME_COLLISION,
        "NtCreateEvent should have failed with STATUS_OBJECT_NAME_COLLISION got(%08x)\n", status);

    attr.Attributes = 0;
    status = FUNC4(&Mutant, GENERIC_ALL, &attr, FALSE);
    FUNC1(status == STATUS_OBJECT_PATH_NOT_FOUND,
        "NtCreateMutant should have failed with STATUS_OBJECT_PATH_NOT_FOUND got(%08x)\n", status);

    FUNC2(Event);
}