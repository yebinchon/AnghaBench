
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;


 int ok (int,char*) ;
 char* pStrChrNW (char const*,char,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_StrChrNW(void)
{
    static const WCHAR string[] = {'T','e','s','t','i','n','g',' ','S','t','r','i','n','g',0};
    LPWSTR p;

    if (!pStrChrNW)
    {
        win_skip("StrChrNW not available\n");
        return;
    }

    p = pStrChrNW(string,'t',10);
    ok(*p=='t',"Found wrong 't'\n");
    ok(*(p+1)=='i',"next should be 'i'\n");

    p = pStrChrNW(string,'S',10);
    ok(*p=='S',"Found wrong 'S'\n");

    p = pStrChrNW(string,'r',10);
    ok(p==((void*)0),"Should not have found 'r'\n");
}
