
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ DWORD_PTR ;
typedef scalar_t__ BSTR ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* CoTaskMemAlloc (int) ;
 scalar_t__ GetEnvironmentVariableA (char*,int *,int ) ;
 scalar_t__ SysAllocString (char const*) ;
 scalar_t__ SysAllocStringLen (int *,int) ;
 int SysFreeString (scalar_t__) ;
 int SysStringLen (scalar_t__) ;
 int lstrcmpW (scalar_t__,char const*) ;
 int ok (int,char*) ;
 int skip (char*) ;

__attribute__((used)) static void test_bstr_cache(void)
{
    BSTR str, str2, strs[20];
    unsigned i;

    static const WCHAR testW[] = {'t','e','s','t',0};

    if (GetEnvironmentVariableA("OANOCACHE", ((void*)0), 0)) {
        skip("BSTR cache is disabled, some tests will be skipped.\n");
        return;
    }

    str = SysAllocString(testW);

    SysFreeString(str);

    SysFreeString(str);

    ok(SysStringLen(str) == 4, "unexpected len\n");
    ok(!lstrcmpW(str, testW), "string changed\n");

    str2 = SysAllocString(testW);
    ok(str == str2, "str != str2\n");
    SysFreeString(str2);




    for(i=0; i < ARRAY_SIZE(strs); i++)
    {
        DWORD_PTR *ptr = CoTaskMemAlloc(64);
        ptr[0] = 0;
        strs[i] = (BSTR)(ptr + 1);
    }
    for(i=0; i < ARRAY_SIZE(strs); i++)
        SysFreeString(strs[i]);


    str = SysAllocStringLen(((void*)0), 24);
    ok(str == strs[0], "str != strs[0]\n");


    str2 = SysAllocStringLen(((void*)0), 16);
    ok(str2 == strs[1], "str2 != strs[1]\n");

    SysFreeString(str);
    SysFreeString(str2);
    SysFreeString(str);
    SysFreeString(str2);
}
