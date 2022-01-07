
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sfi ;
typedef int UINT ;
struct TYPE_4__ {scalar_t__ scripts; int* wszFont; } ;
typedef TYPE_1__ SCRIPTFONTINFO ;
typedef int IMLangFontLink2 ;
typedef scalar_t__ HRESULT ;


 int GetLastError () ;
 scalar_t__ IMLangFontLink2_GetScriptFontInfo (int *,int ,int ,int*,TYPE_1__*) ;
 int SCRIPTCONTF_FIXED_FONT ;
 int SCRIPTCONTF_PROPORTIONAL_FONT ;
 scalar_t__ S_OK ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,...) ;
 int sidAsciiLatin ;

__attribute__((used)) static void test_GetScriptFontInfo(IMLangFontLink2 *font_link)
{
    HRESULT hr;
    UINT nfonts;
    SCRIPTFONTINFO sfi[1];

    nfonts = 0;
    hr = IMLangFontLink2_GetScriptFontInfo(font_link, sidAsciiLatin, 0, &nfonts, ((void*)0));
    ok(hr == S_OK, "GetScriptFontInfo failed %u\n", GetLastError());
    ok(nfonts, "unexpected result\n");

    nfonts = 0;
    hr = IMLangFontLink2_GetScriptFontInfo(font_link, sidAsciiLatin, SCRIPTCONTF_FIXED_FONT, &nfonts, ((void*)0));
    ok(hr == S_OK, "GetScriptFontInfo failed %u\n", GetLastError());
    ok(nfonts, "unexpected result\n");

    nfonts = 0;
    hr = IMLangFontLink2_GetScriptFontInfo(font_link, sidAsciiLatin, SCRIPTCONTF_PROPORTIONAL_FONT, &nfonts, ((void*)0));
    ok(hr == S_OK, "GetScriptFontInfo failed %u\n", GetLastError());
    ok(nfonts, "unexpected result\n");

    nfonts = 1;
    memset(sfi, 0, sizeof(sfi));
    hr = IMLangFontLink2_GetScriptFontInfo(font_link, sidAsciiLatin, SCRIPTCONTF_FIXED_FONT, &nfonts, sfi);
    ok(hr == S_OK, "GetScriptFontInfo failed %u\n", GetLastError());
    ok(nfonts == 1, "got %u, expected 1\n", nfonts);
    ok(sfi[0].scripts != 0, "unexpected result\n");
    ok(sfi[0].wszFont[0], "unexpected result\n");

    nfonts = 1;
    memset(sfi, 0, sizeof(sfi));
    hr = IMLangFontLink2_GetScriptFontInfo(font_link, sidAsciiLatin, SCRIPTCONTF_PROPORTIONAL_FONT, &nfonts, sfi);
    ok(hr == S_OK, "GetScriptFontInfo failed %u\n", GetLastError());
    ok(nfonts == 1, "got %u, expected 1\n", nfonts);
    ok(sfi[0].scripts != 0, "unexpected result\n");
    ok(sfi[0].wszFont[0], "unexpected result\n");
}
