
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data ;
struct TYPE_3__ {int member_0; int cbSize; } ;
typedef scalar_t__ BOOL ;
typedef TYPE_1__ ACTCTX_SECTION_KEYED_DATA ;


 int ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SXS_KEY_NOT_FOUND ;
 scalar_t__ ERROR_SXS_SECTION_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int ok (int,char*,...) ;
 scalar_t__ pFindActCtxSectionStringW (int ,int *,int,int *,TYPE_1__*) ;
 int * testlib2_dll ;
 int * testlib_dll ;

__attribute__((used)) static void test_find_string_fail(void)
{
    ACTCTX_SECTION_KEYED_DATA data = {sizeof(data)};
    BOOL ret;

    ret = pFindActCtxSectionStringW(0, ((void*)0), 100, testlib_dll, &data);
    ok(!ret, "FindActCtxSectionStringW succeeded\n");
    ok(GetLastError() == ERROR_SXS_SECTION_NOT_FOUND, "GetLastError()=%u\n", GetLastError());

    ret = pFindActCtxSectionStringW(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib2_dll, &data);
    ok(!ret, "FindActCtxSectionStringW succeeded\n");
    ok(GetLastError() == ERROR_SXS_KEY_NOT_FOUND, "GetLastError()=%u\n", GetLastError());

    ret = pFindActCtxSectionStringW(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib_dll, ((void*)0));
    ok(!ret, "FindActCtxSectionStringW succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", GetLastError());

    ret = pFindActCtxSectionStringW(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    ((void*)0), &data);
    ok(!ret, "FindActCtxSectionStringW succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", GetLastError());

    data.cbSize = 0;
    ret = pFindActCtxSectionStringW(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib_dll, &data);
    ok(!ret, "FindActCtxSectionStringW succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", GetLastError());

    data.cbSize = 35;
    ret = pFindActCtxSectionStringW(0, ((void*)0), ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION,
                                    testlib_dll, &data);
    ok(!ret, "FindActCtxSectionStringW succeeded\n");
    ok(GetLastError() == ERROR_INVALID_PARAMETER, "GetLastError()=%u\n", GetLastError());
}
