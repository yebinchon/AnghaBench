
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int startup ;
typedef int sa ;
struct TYPE_9__ {int hProcess; } ;
struct TYPE_8__ {int nLength; int bInheritHandle; int * lpSecurityDescriptor; } ;
struct TYPE_7__ {int cb; void* hStdError; void* hStdOutput; int hStdInput; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ SECURITY_ATTRIBUTES ;
typedef TYPE_3__ PROCESS_INFORMATION ;
typedef scalar_t__ LONG ;
typedef int HKEY ;


 int CREATE_DEFAULT_ERROR_MODE ;
 int CreateProcessA (int *,char*,int *,int *,int ,int,int *,int *,TYPE_1__*,TYPE_3__*) ;
 void* GetStdHandle (int ) ;
 int KEY_READ ;
 int MAX_PATH ;
 int NORMAL_PRIORITY_CLASS ;
 scalar_t__ RegCloseKey (int ) ;
 scalar_t__ RegOpenCurrentUser (int ,int *) ;
 int STARTF_USESTDHANDLES ;
 int STD_ERROR_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,scalar_t__) ;
 int p_fopen_s ;
 int sprintf (char*,char*,char const*) ;
 int win_skip (char*) ;
 int winetest_wait_child_process (int ) ;

__attribute__((used)) static void test_invalid_stdin( const char* selfname )
{
    char cmdline[MAX_PATH];
    PROCESS_INFORMATION proc;
    SECURITY_ATTRIBUTES sa;
    STARTUPINFOA startup;
    HKEY key;
    LONG ret;

    if(!p_fopen_s) {

        win_skip("skipping invalid stdin tests\n");
        return;
    }

    ret = RegOpenCurrentUser(KEY_READ, &key);
    ok(!ret, "RegOpenCurrentUser failed: %x\n", ret);

    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = ((void*)0);
    sa.bInheritHandle = TRUE;

    memset(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    startup.dwFlags = STARTF_USESTDHANDLES;
    startup.hStdInput = key;
    startup.hStdOutput = GetStdHandle(STD_OUTPUT_HANDLE);
    startup.hStdError = GetStdHandle(STD_ERROR_HANDLE);

    sprintf(cmdline, "%s file stdin", selfname);
    CreateProcessA(((void*)0), cmdline, ((void*)0), ((void*)0), TRUE,
            CREATE_DEFAULT_ERROR_MODE|NORMAL_PRIORITY_CLASS, ((void*)0), ((void*)0), &startup, &proc);
    winetest_wait_child_process(proc.hProcess);

    ret = RegCloseKey(key);
    ok(!ret, "RegCloseKey failed: %x\n", ret);
}
