
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef char WCHAR ;
typedef int TAG ;
typedef char const* LPCWSTR ;





 scalar_t__ lstrcmpW (char const*,char const*) ;
 int ok (int,char*,int ,int ) ;
 char* pSdbTagToString (int const) ;
 int wine_dbgstr_w (char const*) ;

__attribute__((used)) static void test_SdbTagToString(void)
{
    static const TAG invalid_values[] = {
        1, 128, 129,
        130 | 0xFF,
        130 | (0x800 + 0xEE),
        0x900, 0xFFFF, 0xDEAD, 0xBEEF
    };
    static const WCHAR invalid[] = {'I','n','v','a','l','i','d','T','a','g',0};
    LPCWSTR ret;
    WORD i;

    for (i = 0; i < 9; ++i)
    {
        ret = pSdbTagToString(invalid_values[i]);
        ok(lstrcmpW(ret, invalid) == 0, "unexpected string %s, should be %s\n",
           wine_dbgstr_w(ret), wine_dbgstr_w(invalid));
    }
}
