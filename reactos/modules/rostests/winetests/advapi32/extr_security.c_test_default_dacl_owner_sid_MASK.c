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
struct TYPE_5__ {int /*<<< orphan*/  SidStart; } ;
struct TYPE_4__ {int nLength; int /*<<< orphan*/ * lpSecurityDescriptor; void* bInheritHandle; } ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  void* PSID ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;
typedef  void ACL ;
typedef  TYPE_2__ ACCESS_ALLOWED_ACE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int,int,char*) ; 
 int DACL_SECURITY_INFORMATION ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*) ; 
 void* FALSE ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,void**,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,void**,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int OWNER_SECURITY_INFORMATION ; 
 scalar_t__ SECURITY_DESCRIPTOR_MIN_LENGTH ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 scalar_t__ FUNC12 (void*,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static void FUNC13(void)
{
    HANDLE handle;
    BOOL ret, defaulted, present, found;
    DWORD size, index;
    SECURITY_DESCRIPTOR *sd;
    SECURITY_ATTRIBUTES sa;
    PSID owner;
    ACL *dacl;
    ACCESS_ALLOWED_ACE *ace;

    sd = FUNC8( FUNC5(), 0, SECURITY_DESCRIPTOR_MIN_LENGTH );
    ret = FUNC10( sd, SECURITY_DESCRIPTOR_REVISION );
    FUNC11( ret, "error %u\n", FUNC4() );

    sa.nLength              = sizeof(SECURITY_ATTRIBUTES);
    sa.lpSecurityDescriptor = sd;
    sa.bInheritHandle       = FALSE;
    handle = FUNC1( &sa, TRUE, TRUE, "test_event" );
    FUNC11( handle != NULL, "error %u\n", FUNC4() );

    size = 0;
    ret = FUNC3( handle, OWNER_SECURITY_INFORMATION|DACL_SECURITY_INFORMATION, NULL, 0, &size );
    FUNC11( !ret && FUNC4() == ERROR_INSUFFICIENT_BUFFER, "error %u\n", FUNC4() );

    sd = FUNC8( FUNC5(), 0, size );
    ret = FUNC3( handle, OWNER_SECURITY_INFORMATION|DACL_SECURITY_INFORMATION, sd, size, &size );
    FUNC11( ret, "error %u\n", FUNC4() );

    owner = (void *)0xdeadbeef;
    defaulted = TRUE;
    ret = FUNC7( sd, &owner, &defaulted );
    FUNC11( ret, "error %u\n", FUNC4() );
    FUNC11( owner != (void *)0xdeadbeef, "owner not set\n" );
    FUNC11( !defaulted, "owner defaulted\n" );

    dacl = (void *)0xdeadbeef;
    present = FALSE;
    defaulted = TRUE;
    ret = FUNC6( sd, &present, &dacl, &defaulted );
    FUNC11( ret, "error %u\n", FUNC4() );
    FUNC11( present, "dacl not present\n" );
    FUNC11( dacl != (void *)0xdeadbeef, "dacl not set\n" );
    FUNC11( !defaulted, "dacl defaulted\n" );

    index = 0;
    found = FALSE;
    while (FUNC12( dacl, index++, (void **)&ace ))
    {
        if (FUNC2( &ace->SidStart, owner )) found = TRUE;
    }
    FUNC11( found, "owner sid not found in dacl\n" );

    FUNC9( FUNC5(), 0, sa.lpSecurityDescriptor );
    FUNC9( FUNC5(), 0, sd );
    FUNC0( handle );
}