#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  startup ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_9__ {int /*<<< orphan*/  hProcess; } ;
struct TYPE_8__ {int nLength; int /*<<< orphan*/  bInheritHandle; int /*<<< orphan*/ * lpSecurityDescriptor; } ;
struct TYPE_7__ {int cb; void* hStdError; void* hStdOutput; int /*<<< orphan*/  hStdInput; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ SECURITY_ATTRIBUTES ;
typedef  TYPE_3__ PROCESS_INFORMATION ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int CREATE_DEFAULT_ERROR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_PATH ; 
 int NORMAL_PRIORITY_CLASS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  p_fopen_s ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( const char* selfname )
{
    char cmdline[MAX_PATH];
    PROCESS_INFORMATION proc;
    SECURITY_ATTRIBUTES sa;
    STARTUPINFOA startup;
    HKEY key;
    LONG ret;

    if(!p_fopen_s) {
        /* Behaviour of the dll has changed in newer version */
        FUNC7("skipping invalid stdin tests\n");
        return;
    }

    ret = FUNC3(KEY_READ, &key);
    FUNC5(!ret, "RegOpenCurrentUser failed: %x\n", ret);

    sa.nLength = sizeof(sa);
    sa.lpSecurityDescriptor = NULL;
    sa.bInheritHandle = TRUE;

    FUNC4(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    startup.dwFlags = STARTF_USESTDHANDLES;
    startup.hStdInput = key;
    startup.hStdOutput = FUNC1(STD_OUTPUT_HANDLE);
    startup.hStdError = FUNC1(STD_ERROR_HANDLE);

    FUNC6(cmdline, "%s file stdin", selfname);
    FUNC0(NULL, cmdline, NULL, NULL, TRUE,
            CREATE_DEFAULT_ERROR_MODE|NORMAL_PRIORITY_CLASS, NULL, NULL, &startup, &proc);
    FUNC8(proc.hProcess);

    ret = FUNC2(key);
    FUNC5(!ret, "RegCloseKey failed: %x\n", ret);
}