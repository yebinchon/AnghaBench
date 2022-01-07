
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int SidStart; } ;
struct TYPE_4__ {int nLength; int * lpSecurityDescriptor; void* bInheritHandle; } ;
typedef int SECURITY_DESCRIPTOR ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef void* PSID ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;
typedef void ACL ;
typedef TYPE_2__ ACCESS_ALLOWED_ACE ;


 int CloseHandle (int *) ;
 int * CreateEventA (TYPE_1__*,int,int,char*) ;
 int DACL_SECURITY_INFORMATION ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ EqualSid (int *,void*) ;
 void* FALSE ;
 int GetKernelObjectSecurity (int *,int,int *,scalar_t__,scalar_t__*) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int GetSecurityDescriptorDacl (int *,int*,void**,int*) ;
 int GetSecurityDescriptorOwner (int *,void**,int*) ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int InitializeSecurityDescriptor (int *,int ) ;
 int OWNER_SECURITY_INFORMATION ;
 scalar_t__ SECURITY_DESCRIPTOR_MIN_LENGTH ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ pGetAce (void*,int ,void**) ;

__attribute__((used)) static void test_default_dacl_owner_sid(void)
{
    HANDLE handle;
    BOOL ret, defaulted, present, found;
    DWORD size, index;
    SECURITY_DESCRIPTOR *sd;
    SECURITY_ATTRIBUTES sa;
    PSID owner;
    ACL *dacl;
    ACCESS_ALLOWED_ACE *ace;

    sd = HeapAlloc( GetProcessHeap(), 0, SECURITY_DESCRIPTOR_MIN_LENGTH );
    ret = InitializeSecurityDescriptor( sd, SECURITY_DESCRIPTOR_REVISION );
    ok( ret, "error %u\n", GetLastError() );

    sa.nLength = sizeof(SECURITY_ATTRIBUTES);
    sa.lpSecurityDescriptor = sd;
    sa.bInheritHandle = FALSE;
    handle = CreateEventA( &sa, TRUE, TRUE, "test_event" );
    ok( handle != ((void*)0), "error %u\n", GetLastError() );

    size = 0;
    ret = GetKernelObjectSecurity( handle, OWNER_SECURITY_INFORMATION|DACL_SECURITY_INFORMATION, ((void*)0), 0, &size );
    ok( !ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER, "error %u\n", GetLastError() );

    sd = HeapAlloc( GetProcessHeap(), 0, size );
    ret = GetKernelObjectSecurity( handle, OWNER_SECURITY_INFORMATION|DACL_SECURITY_INFORMATION, sd, size, &size );
    ok( ret, "error %u\n", GetLastError() );

    owner = (void *)0xdeadbeef;
    defaulted = TRUE;
    ret = GetSecurityDescriptorOwner( sd, &owner, &defaulted );
    ok( ret, "error %u\n", GetLastError() );
    ok( owner != (void *)0xdeadbeef, "owner not set\n" );
    ok( !defaulted, "owner defaulted\n" );

    dacl = (void *)0xdeadbeef;
    present = FALSE;
    defaulted = TRUE;
    ret = GetSecurityDescriptorDacl( sd, &present, &dacl, &defaulted );
    ok( ret, "error %u\n", GetLastError() );
    ok( present, "dacl not present\n" );
    ok( dacl != (void *)0xdeadbeef, "dacl not set\n" );
    ok( !defaulted, "dacl defaulted\n" );

    index = 0;
    found = FALSE;
    while (pGetAce( dacl, index++, (void **)&ace ))
    {
        if (EqualSid( &ace->SidStart, owner )) found = TRUE;
    }
    ok( found, "owner sid not found in dacl\n" );

    HeapFree( GetProcessHeap(), 0, sa.lpSecurityDescriptor );
    HeapFree( GetProcessHeap(), 0, sd );
    CloseHandle( handle );
}
