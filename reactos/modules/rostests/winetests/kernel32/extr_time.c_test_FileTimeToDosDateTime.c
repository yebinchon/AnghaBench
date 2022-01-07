
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int member_0; } ;
typedef TYPE_1__ FILETIME ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ FileTimeToDosDateTime (TYPE_1__*,int *,int *) ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_FileTimeToDosDateTime(void)
{
    FILETIME ft = { 0 };
    WORD fatdate, fattime;
    BOOL ret;

    if (0)
    {

        FileTimeToDosDateTime(((void*)0), ((void*)0), ((void*)0));
    }

    SetLastError(0xdeadbeef);
    ret = FileTimeToDosDateTime(&ft, ((void*)0), ((void*)0));
    ok(!ret, "expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = FileTimeToDosDateTime(&ft, &fatdate, ((void*)0));
    ok(!ret, "expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = FileTimeToDosDateTime(&ft, ((void*)0), &fattime);
    ok(!ret, "expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());

    SetLastError(0xdeadbeef);
    ret = FileTimeToDosDateTime(&ft, &fatdate, &fattime);
    ok(!ret, "expected failure\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
}
