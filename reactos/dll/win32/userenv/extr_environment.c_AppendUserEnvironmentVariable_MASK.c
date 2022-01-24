#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int MaximumLength; int /*<<< orphan*/ * Buffer; scalar_t__ Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UNICODE_NULL ; 

__attribute__((used)) static
BOOL
FUNC8(PWSTR* Environment,
                              LPWSTR lpName,
                              LPWSTR lpValue)
{
    NTSTATUS Status;
    UNICODE_STRING Name, Value;

    FUNC5(&Name, lpName);

    Value.Length = 0;
    Value.MaximumLength = 1024 * sizeof(WCHAR);
    Value.Buffer = FUNC1(LPTR, Value.MaximumLength);
    if (Value.Buffer == NULL)
        return FALSE;

    Value.Buffer[0] = UNICODE_NULL;

    Status = FUNC6(*Environment,
                                           &Name,
                                           &Value);
    if (FUNC3(Status))
        FUNC4(&Value, L";");

    FUNC4(&Value, lpValue);

    Status = FUNC7(Environment,
                                       &Name,
                                       &Value);
    FUNC2(Value.Buffer);
    if (!FUNC3(Status))
    {
        FUNC0("RtlSetEnvironmentVariable() failed (Status %lx)\n", Status);
        return FALSE;
    }

    return TRUE;
}