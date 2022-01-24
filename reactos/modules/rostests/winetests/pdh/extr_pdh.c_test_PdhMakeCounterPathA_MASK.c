#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  e ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {char* szMachineName; char* szObjectName; char* szInstanceName; char* szParentInstance; int dwInstanceIndex; char* szCounterName; } ;
typedef  char* PDH_STATUS ;
typedef  TYPE_1__ PDH_COUNTER_PATH_ELEMENTS_A ;
typedef  int DWORD ;

/* Variables and functions */
 char* ERROR_SUCCESS ; 
 char* PDH_INVALID_ARGUMENT ; 
 char* FUNC0 (TYPE_1__*,char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    PDH_STATUS ret;
    PDH_COUNTER_PATH_ELEMENTS_A e;
    char buffer[1024];
    DWORD buflen;

    ret = FUNC0(NULL, NULL, NULL, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buflen = 0;
    ret = FUNC0(NULL, NULL, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buflen = 0;
    ret = FUNC0(NULL, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buflen = sizeof(buffer);
    FUNC1(&e, 0, sizeof(e));
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szMachineName = (char *)"machine";
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szObjectName = (char *)"object";
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szInstanceName = (char *)"instance";
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szParentInstance = (char *)"parent";
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.dwInstanceIndex = 1;
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szCounterName = (char *)"counter";
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, "\\\\machine\\object(parent/instance#1)\\counter"),
       "expected \"\\\\machine\\object(parent/instance#1)\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szParentInstance = NULL;
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, "\\\\machine\\object(instance#1)\\counter"),
       "expected \"\\\\machine\\object(instance#1)\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szInstanceName = NULL;
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, "\\\\machine\\object\\counter"),
       "expected \"\\\\machine\\object\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szMachineName = NULL;
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    FUNC2(!FUNC3(buffer, "\\object\\counter"),
       "expected \"\\object\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szObjectName = NULL;
    ret = FUNC0(&e, buffer, &buflen, 0);
    FUNC2(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
}