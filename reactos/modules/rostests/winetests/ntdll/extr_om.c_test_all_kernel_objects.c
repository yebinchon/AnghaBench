
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int UINT ;
struct TYPE_3__ {int QuadPart; } ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HANDLE ;


 int FALSE ;
 int GENERIC_ALL ;
 int NotificationTimer ;
 int PAGE_READWRITE ;
 int SECTION_MAP_WRITE ;
 int SEC_COMMIT ;
 int ok (int,char*,int ,scalar_t__) ;
 int pNtClose (int ) ;
 scalar_t__ pNtCreateDirectoryObject (int *,int ,int *) ;
 scalar_t__ pNtCreateEvent (int *,int ,int *,int,int ) ;
 scalar_t__ pNtCreateIoCompletion (int *,int ,int *,int ) ;
 scalar_t__ pNtCreateJobObject (int *,int ,int *) ;
 scalar_t__ pNtCreateKeyedEvent (int *,int ,int *,int ) ;
 scalar_t__ pNtCreateMutant (int *,int ,int *,int ) ;
 scalar_t__ pNtCreateSection (int *,int ,int *,TYPE_1__*,int ,int ,int ) ;
 scalar_t__ pNtCreateSemaphore (int *,int ,int *,int,int) ;
 scalar_t__ pNtCreateSymbolicLinkObject (int *,int ,int *,int *) ;
 scalar_t__ pNtCreateTimer (int *,int ,int *,int ) ;
 scalar_t__ pNtOpenDirectoryObject (int *,int ,int *) ;
 scalar_t__ pNtOpenEvent (int *,int ,int *) ;
 scalar_t__ pNtOpenIoCompletion (int *,int ,int *) ;
 scalar_t__ pNtOpenJobObject (int *,int ,int *) ;
 scalar_t__ pNtOpenKeyedEvent (int *,int ,int *) ;
 scalar_t__ pNtOpenMutant (int *,int ,int *) ;
 scalar_t__ pNtOpenSection (int *,int ,int *) ;
 scalar_t__ pNtOpenSemaphore (int *,int ,int *) ;
 scalar_t__ pNtOpenSymbolicLinkObject (int *,int ,int *) ;
 scalar_t__ pNtOpenTimer (int *,int ,int *) ;
 int pRtlCreateUnicodeStringFromAsciiz (int *,char*) ;
 int pRtlFreeUnicodeString (int *) ;

__attribute__((used)) static void test_all_kernel_objects( UINT line, OBJECT_ATTRIBUTES *attr,
                                     NTSTATUS create_expect, NTSTATUS open_expect )
{
    UNICODE_STRING target;
    LARGE_INTEGER size;
    NTSTATUS status, status2;
    HANDLE ret, ret2;

    pRtlCreateUnicodeStringFromAsciiz( &target, "\\DosDevices" );
    size.QuadPart = 4096;

    status = pNtCreateMutant( &ret, GENERIC_ALL, attr, FALSE );
    ok( status == create_expect, "%u: NtCreateMutant failed %x\n", line, status );
    status2 = pNtOpenMutant( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenMutant failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateSemaphore( &ret, GENERIC_ALL, attr, 1, 2 );
    ok( status == create_expect, "%u: NtCreateSemaphore failed %x\n", line, status );
    status2 = pNtOpenSemaphore( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenSemaphore failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateEvent( &ret, GENERIC_ALL, attr, 1, 0 );
    ok( status == create_expect, "%u: NtCreateEvent failed %x\n", line, status );
    status2 = pNtOpenEvent( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenEvent failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateKeyedEvent( &ret, GENERIC_ALL, attr, 0 );
    ok( status == create_expect, "%u: NtCreateKeyedEvent failed %x\n", line, status );
    status2 = pNtOpenKeyedEvent( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenKeyedEvent failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateTimer( &ret, GENERIC_ALL, attr, NotificationTimer );
    ok( status == create_expect, "%u: NtCreateTimer failed %x\n", line, status );
    status2 = pNtOpenTimer( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenTimer failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateIoCompletion( &ret, GENERIC_ALL, attr, 0 );
    ok( status == create_expect, "%u: NtCreateCompletion failed %x\n", line, status );
    status2 = pNtOpenIoCompletion( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenCompletion failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateJobObject( &ret, GENERIC_ALL, attr );
    ok( status == create_expect, "%u: NtCreateJobObject failed %x\n", line, status );
    status2 = pNtOpenJobObject( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenJobObject failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateDirectoryObject( &ret, GENERIC_ALL, attr );
    ok( status == create_expect, "%u: NtCreateDirectoryObject failed %x\n", line, status );
    status2 = pNtOpenDirectoryObject( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenDirectoryObject failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateSymbolicLinkObject( &ret, GENERIC_ALL, attr, &target );
    ok( status == create_expect, "%u: NtCreateSymbolicLinkObject failed %x\n", line, status );
    status2 = pNtOpenSymbolicLinkObject( &ret2, GENERIC_ALL, attr );
    ok( status2 == open_expect, "%u: NtOpenSymbolicLinkObject failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    status = pNtCreateSection( &ret, SECTION_MAP_WRITE, attr, &size, PAGE_READWRITE, SEC_COMMIT, 0 );
    ok( status == create_expect, "%u: NtCreateSection failed %x\n", line, status );
    status2 = pNtOpenSection( &ret2, SECTION_MAP_WRITE, attr );
    ok( status2 == open_expect, "%u: NtOpenSection failed %x\n", line, status2 );
    if (!status) pNtClose( ret );
    if (!status2) pNtClose( ret2 );
    pRtlFreeUnicodeString( &target );
}
