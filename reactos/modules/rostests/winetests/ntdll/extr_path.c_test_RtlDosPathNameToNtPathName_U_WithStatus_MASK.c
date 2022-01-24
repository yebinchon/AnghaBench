#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_OBJECT_NAME_INVALID ; 
 scalar_t__ STATUS_OBJECT_PATH_NOT_FOUND ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static const WCHAR emptyW[] = { 0 };
    WCHAR path[MAX_PATH];
    UNICODE_STRING nameW;
    NTSTATUS status;

    if (!&pRtlDosPathNameToNtPathName_U_WithStatus)
    {
        FUNC5("RtlDosPathNameToNtPathName_U_WithStatus() is not supported.\n");
        return;
    }

    FUNC0( MAX_PATH, path );

    status = FUNC4( path, &nameW, NULL, NULL );
    FUNC3(!status, "Failed convert to nt path, %#x.\n", status);

    status = FUNC4( NULL, &nameW, NULL, NULL );
    FUNC3(status == STATUS_OBJECT_NAME_INVALID || FUNC2(status == STATUS_OBJECT_PATH_NOT_FOUND) /* W2k3 */,
        "Unexpected status %#x.\n", status);

    status = FUNC4( emptyW, &nameW, NULL, NULL );
    FUNC3(status == STATUS_OBJECT_NAME_INVALID || FUNC2(status == STATUS_OBJECT_PATH_NOT_FOUND) /* W2k3 */,
        "Unexpected status %#x.\n", status);

    FUNC1( &nameW );
}