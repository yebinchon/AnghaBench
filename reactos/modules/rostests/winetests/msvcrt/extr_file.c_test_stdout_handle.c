
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sa ;
struct TYPE_10__ {int hProcess; } ;
struct TYPE_9__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
struct TYPE_8__ {void* hStdError; scalar_t__ hStdOutput; void* hStdInput; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_3__ PROCESS_INFORMATION ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOL ;


 int CREATE_ALWAYS ;
 int CREATE_DEFAULT_ERROR_MODE ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int,int,TYPE_2__*,int ,int ,int *) ;
 int CreateProcessA (int *,char*,int *,int *,int ,int,int *,int *,TYPE_1__*,TYPE_3__*) ;
 int DeleteFileA (char*) ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 void* GetStdHandle (int ) ;
 int NORMAL_PRIORITY_CLASS ;
 int STARTF_USESTDHANDLES ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int TRUE ;
 int ok (int,char*,char const*,...) ;
 char* read_file (scalar_t__) ;
 int strcmp (char const*,char*) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_stdout_handle( STARTUPINFOA *startup, char *cmdline, HANDLE hstdout, BOOL expect_stdout,
                                const char *descr )
{
    const char *data;
    HANDLE hErrorFile;
    SECURITY_ATTRIBUTES sa;
    PROCESS_INFORMATION proc;


    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = ((void*)0);
    sa.bInheritHandle = TRUE;

    hErrorFile = CreateFileA( "fdopen.err", GENERIC_READ|GENERIC_WRITE,
                              FILE_SHARE_READ | FILE_SHARE_WRITE, &sa, CREATE_ALWAYS, 0, ((void*)0) );
    startup->dwFlags = STARTF_USESTDHANDLES;
    startup->hStdInput = GetStdHandle( STD_INPUT_HANDLE );
    startup->hStdOutput = hErrorFile;
    startup->hStdError = GetStdHandle( STD_ERROR_HANDLE );

    CreateProcessA( ((void*)0), cmdline, ((void*)0), ((void*)0), TRUE,
                    CREATE_DEFAULT_ERROR_MODE | NORMAL_PRIORITY_CLASS, ((void*)0), ((void*)0), startup, &proc );
    winetest_wait_child_process( proc.hProcess );

    data = read_file( hErrorFile );
    if (expect_stdout)
        ok( strcmp( data, "Success" ), "%s: Error file shouldn't contain data\n", descr );
    else
        ok( !strcmp( data, "Success" ), "%s: Wrong error data (%s)\n", descr, data );

    if (hstdout)
    {
        data = read_file( hstdout );
        if (expect_stdout)
            ok( !strcmp( data, "Success" ), "%s: Wrong stdout data (%s)\n", descr, data );
        else
            ok( strcmp( data, "Success" ), "%s: Stdout file shouldn't contain data\n", descr );
    }

    CloseHandle( hErrorFile );
    DeleteFileA( "fdopen.err" );
}
