
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;


 int ok (int,char*) ;
 char const* p_wcslwr (char*) ;
 char const* p_wcsupr (char*) ;

__attribute__((used)) static void test_wcslwrupr(void)
{
    static WCHAR teststringW[] = {'a','b','r','a','c','a','d','a','b','r','a',0};
    static WCHAR emptyW[] = {0};
    static const WCHAR constemptyW[] = {0};

    if (0)
    {
        static const WCHAR conststringW[] = {'a','b','r','a','c','a','d','a','b','r','a',0};
        ok(p_wcslwr((LPWSTR)conststringW) == conststringW, "p_wcslwr returned different string\n");
        ok(p_wcsupr((LPWSTR)conststringW) == conststringW, "p_wcsupr returned different string\n");
        ok(p_wcslwr(((void*)0)) == ((void*)0), "p_wcslwr didn't returned NULL\n");
        ok(p_wcsupr(((void*)0)) == ((void*)0), "p_wcsupr didn't returned NULL\n");
    }
    ok(p_wcslwr(teststringW) == teststringW, "p_wcslwr returned different string\n");
    ok(p_wcsupr(teststringW) == teststringW, "p_wcsupr returned different string\n");
    ok(p_wcslwr(emptyW) == emptyW, "p_wcslwr returned different string\n");
    ok(p_wcsupr(emptyW) == emptyW, "p_wcsupr returned different string\n");
    ok(p_wcslwr((LPWSTR)constemptyW) == constemptyW, "p_wcslwr returned different string\n");
    ok(p_wcsupr((LPWSTR)constemptyW) == constemptyW, "p_wcsupr returned different string\n");
}
