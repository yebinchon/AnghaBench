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
typedef  int ULONG ;
typedef  int NTSTATUS ;

/* Variables and functions */
 int FALSE ; 
 int STATUS_ACCESS_VIOLATION ; 
 int STATUS_NOT_IMPLEMENTED ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    ULONG old, cur;
    NTSTATUS status;

    if (!&pRtlWow64EnableFsRedirection || !&pRtlWow64EnableFsRedirectionEx)
    {
        FUNC3( "Wow64 redirection not supported\n" );
        return;
    }
    status = FUNC2( FALSE, &old );
    if (status == STATUS_NOT_IMPLEMENTED)
    {
        FUNC3( "Wow64 redirection not supported\n" );
        return;
    }
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );

    status = FUNC2( FALSE, &cur );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    FUNC0( !cur, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    status = FUNC2( TRUE, &cur );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    status = FUNC2( TRUE, &cur );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    FUNC0( cur == 1, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    status = FUNC1( TRUE );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    status = FUNC2( TRUE, &cur );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    FUNC0( !cur, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    status = FUNC2( TRUE, NULL );
    FUNC0( status == STATUS_ACCESS_VIOLATION, "RtlWow64EnableFsRedirectionEx failed with status %x\n", status );
    status = FUNC2( TRUE, (void*)1 );
    FUNC0( status == STATUS_ACCESS_VIOLATION, "RtlWow64EnableFsRedirectionEx failed with status %x\n", status );
    status = FUNC2( TRUE, (void*)0xDEADBEEF );
    FUNC0( status == STATUS_ACCESS_VIOLATION, "RtlWow64EnableFsRedirectionEx failed with status %x\n", status );

    status = FUNC1( FALSE );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    status = FUNC2( FALSE, &cur );
    FUNC0( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    FUNC0( cur == 1, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    FUNC2( old, &cur );
}