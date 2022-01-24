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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int QuadPart; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GENERIC_ALL ; 
 int /*<<< orphan*/  NotificationTimer ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  SECTION_MAP_WRITE ; 
 int /*<<< orphan*/  SEC_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24( UINT line, OBJECT_ATTRIBUTES *attr,
                                     NTSTATUS create_expect, NTSTATUS open_expect )
{
    UNICODE_STRING target;
    LARGE_INTEGER size;
    NTSTATUS status, status2;
    HANDLE ret, ret2;

    FUNC22( &target, "\\DosDevices" );
    size.QuadPart = 4096;

    status = FUNC7( &ret, GENERIC_ALL, attr, FALSE );
    FUNC0( status == create_expect, "%u: NtCreateMutant failed %x\n", line, status );
    status2 = FUNC17( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenMutant failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC9( &ret, GENERIC_ALL, attr, 1, 2 );
    FUNC0( status == create_expect, "%u: NtCreateSemaphore failed %x\n", line, status );
    status2 = FUNC19( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenSemaphore failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC3( &ret, GENERIC_ALL, attr, 1, 0 );
    FUNC0( status == create_expect, "%u: NtCreateEvent failed %x\n", line, status );
    status2 = FUNC13( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenEvent failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC6( &ret, GENERIC_ALL, attr, 0 );
    FUNC0( status == create_expect, "%u: NtCreateKeyedEvent failed %x\n", line, status );
    status2 = FUNC16( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenKeyedEvent failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC11( &ret, GENERIC_ALL, attr, NotificationTimer );
    FUNC0( status == create_expect, "%u: NtCreateTimer failed %x\n", line, status );
    status2 = FUNC21( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenTimer failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC4( &ret, GENERIC_ALL, attr, 0 );
    FUNC0( status == create_expect, "%u: NtCreateCompletion failed %x\n", line, status );
    status2 = FUNC14( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenCompletion failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC5( &ret, GENERIC_ALL, attr );
    FUNC0( status == create_expect, "%u: NtCreateJobObject failed %x\n", line, status );
    status2 = FUNC15( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenJobObject failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC2( &ret, GENERIC_ALL, attr );
    FUNC0( status == create_expect, "%u: NtCreateDirectoryObject failed %x\n", line, status );
    status2 = FUNC12( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenDirectoryObject failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC10( &ret, GENERIC_ALL, attr, &target );
    FUNC0( status == create_expect, "%u: NtCreateSymbolicLinkObject failed %x\n", line, status );
    status2 = FUNC20( &ret2, GENERIC_ALL, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenSymbolicLinkObject failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    status = FUNC8( &ret, SECTION_MAP_WRITE, attr, &size, PAGE_READWRITE, SEC_COMMIT, 0 );
    FUNC0( status == create_expect, "%u: NtCreateSection failed %x\n", line, status );
    status2 = FUNC18( &ret2, SECTION_MAP_WRITE, attr );
    FUNC0( status2 == open_expect, "%u: NtOpenSection failed %x\n", line, status2 );
    if (!status) FUNC1( ret );
    if (!status2) FUNC1( ret2 );
    FUNC23( &target );
}