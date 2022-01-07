
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int e ;
typedef int buffer ;
struct TYPE_4__ {char* szMachineName; char* szObjectName; char* szInstanceName; char* szParentInstance; int dwInstanceIndex; char* szCounterName; } ;
typedef char* PDH_STATUS ;
typedef TYPE_1__ PDH_COUNTER_PATH_ELEMENTS_A ;
typedef int DWORD ;


 char* ERROR_SUCCESS ;
 char* PDH_INVALID_ARGUMENT ;
 char* PdhMakeCounterPathA (TYPE_1__*,char*,int*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void test_PdhMakeCounterPathA(void)
{
    PDH_STATUS ret;
    PDH_COUNTER_PATH_ELEMENTS_A e;
    char buffer[1024];
    DWORD buflen;

    ret = PdhMakeCounterPathA(((void*)0), ((void*)0), ((void*)0), 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buflen = 0;
    ret = PdhMakeCounterPathA(((void*)0), ((void*)0), &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buflen = 0;
    ret = PdhMakeCounterPathA(((void*)0), buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buflen = sizeof(buffer);
    memset(&e, 0, sizeof(e));
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szMachineName = (char *)"machine";
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szObjectName = (char *)"object";
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szInstanceName = (char *)"instance";
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szParentInstance = (char *)"parent";
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.dwInstanceIndex = 1;
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, ""), "expected \"machine\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szCounterName = (char *)"counter";
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, "\\\\machine\\object(parent/instance#1)\\counter"),
       "expected \"\\\\machine\\object(parent/instance#1)\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szParentInstance = ((void*)0);
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, "\\\\machine\\object(instance#1)\\counter"),
       "expected \"\\\\machine\\object(instance#1)\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szInstanceName = ((void*)0);
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, "\\\\machine\\object\\counter"),
       "expected \"\\\\machine\\object\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szMachineName = ((void*)0);
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == ERROR_SUCCESS, "PdhMakeCounterPathA failed 0x%08x\n", ret);
    ok(!strcmp(buffer, "\\object\\counter"),
       "expected \"\\object\\counter\" got %s\n", buffer);

    buffer[0] = 0;
    buflen = sizeof(buffer);
    e.szObjectName = ((void*)0);
    ret = PdhMakeCounterPathA(&e, buffer, &buflen, 0);
    ok(ret == PDH_INVALID_ARGUMENT, "PdhMakeCounterPathA failed 0x%08x\n", ret);
}
