#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sa ;
struct TYPE_10__ {int /*<<< orphan*/  hProcess; } ;
struct TYPE_9__ {int nLength; int /*<<< orphan*/  bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
struct TYPE_8__ {void* hStdError; scalar_t__ hStdOutput; void* hStdInput; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  TYPE_3__ PROCESS_INFORMATION ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int CREATE_DEFAULT_ERROR_MODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int NORMAL_PRIORITY_CLASS ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*,...) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( STARTUPINFOA *startup, char *cmdline, HANDLE hstdout, BOOL expect_stdout,
                                const char *descr )
{
    const char *data;
    HANDLE hErrorFile;
    SECURITY_ATTRIBUTES sa;
    PROCESS_INFORMATION proc;

    /* make file handle inheritable */
    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = NULL;
    sa.bInheritHandle = TRUE;

    hErrorFile = FUNC1( "fdopen.err", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, NULL );
    startup->dwFlags    = STARTF_USESTDHANDLES;
    startup->hStdInput  = FUNC4( STD_INPUT_HANDLE );
    startup->hStdOutput = hErrorFile;
    startup->hStdError  = FUNC4( STD_ERROR_HANDLE );

    FUNC2( NULL, cmdline, NULL, NULL, TRUE,
                    CREATE_DEFAULT_ERROR_MODE | NORMAL_PRIORITY_CLASS, NULL, NULL, startup, &proc );
    FUNC8( proc.hProcess );

    data = FUNC6( hErrorFile );
    if (expect_stdout)
        FUNC5( FUNC7( data, "Success" ), "%s: Error file shouldn't contain data\n", descr );
    else
        FUNC5( !FUNC7( data, "Success" ), "%s: Wrong error data (%s)\n", descr, data );

    if (hstdout)
    {
        data = FUNC6( hstdout );
        if (expect_stdout)
            FUNC5( !FUNC7( data, "Success" ), "%s: Wrong stdout data (%s)\n", descr, data );
        else
            FUNC5( FUNC7( data, "Success" ), "%s: Stdout file shouldn't contain data\n", descr );
    }

    FUNC0( hErrorFile );
    FUNC3( "fdopen.err" );
}