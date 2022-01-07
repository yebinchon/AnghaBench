
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int NTSTATUS ;


 int FALSE ;
 int STATUS_ACCESS_VIOLATION ;
 int STATUS_NOT_IMPLEMENTED ;
 int TRUE ;
 int ok (int,char*,int) ;
 int pRtlWow64EnableFsRedirection (int) ;
 int pRtlWow64EnableFsRedirectionEx (int,int*) ;
 int skip (char*) ;

__attribute__((used)) static void test_redirection(void)
{
    ULONG old, cur;
    NTSTATUS status;

    if (!pRtlWow64EnableFsRedirection || !pRtlWow64EnableFsRedirectionEx)
    {
        skip( "Wow64 redirection not supported\n" );
        return;
    }
    status = pRtlWow64EnableFsRedirectionEx( FALSE, &old );
    if (status == STATUS_NOT_IMPLEMENTED)
    {
        skip( "Wow64 redirection not supported\n" );
        return;
    }
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );

    status = pRtlWow64EnableFsRedirectionEx( FALSE, &cur );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    ok( !cur, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    status = pRtlWow64EnableFsRedirectionEx( TRUE, &cur );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    status = pRtlWow64EnableFsRedirectionEx( TRUE, &cur );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    ok( cur == 1, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    status = pRtlWow64EnableFsRedirection( TRUE );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    status = pRtlWow64EnableFsRedirectionEx( TRUE, &cur );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    ok( !cur, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    status = pRtlWow64EnableFsRedirectionEx( TRUE, ((void*)0) );
    ok( status == STATUS_ACCESS_VIOLATION, "RtlWow64EnableFsRedirectionEx failed with status %x\n", status );
    status = pRtlWow64EnableFsRedirectionEx( TRUE, (void*)1 );
    ok( status == STATUS_ACCESS_VIOLATION, "RtlWow64EnableFsRedirectionEx failed with status %x\n", status );
    status = pRtlWow64EnableFsRedirectionEx( TRUE, (void*)0xDEADBEEF );
    ok( status == STATUS_ACCESS_VIOLATION, "RtlWow64EnableFsRedirectionEx failed with status %x\n", status );

    status = pRtlWow64EnableFsRedirection( FALSE );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    status = pRtlWow64EnableFsRedirectionEx( FALSE, &cur );
    ok( !status, "RtlWow64EnableFsRedirectionEx failed status %x\n", status );
    ok( cur == 1, "RtlWow64EnableFsRedirectionEx got %u\n", cur );

    pRtlWow64EnableFsRedirectionEx( old, &cur );
}
