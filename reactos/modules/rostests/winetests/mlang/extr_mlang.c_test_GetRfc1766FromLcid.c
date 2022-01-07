
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {char* broken_rfc; int rfc1766; int hr; int lcid; } ;
typedef int IMultiLanguage2 ;
typedef int HRESULT ;
typedef size_t DWORD ;
typedef char CHAR ;
typedef int * BSTR ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int CP_ACP ;
 int E_INVALIDARG ;
 int IMultiLanguage2_GetRfc1766FromLcid (int *,int ,int **) ;
 int LANG_ENGLISH ;
 int LCMAP_LOWERCASE ;
 int LCMapStringA (int ,int ,int ,scalar_t__,char*,int) ;
 int LOCALE_USER_DEFAULT ;
 int MAKELANGID (int ,int ) ;
 int MAX_RFC1766_NAME ;
 int SUBLANG_ENGLISH_US ;
 int S_OK ;
 int SysFreeString (int *) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 scalar_t__ broken (int) ;
 TYPE_1__* lcid_table ;
 int lstrcmpA (char*,char*) ;
 scalar_t__ lstrlenA (int ) ;
 int ok (int,char*,size_t,...) ;

__attribute__((used)) static void test_GetRfc1766FromLcid(IMultiLanguage2 *iML2)
{
    CHAR expected[MAX_RFC1766_NAME];
    CHAR buffer[MAX_RFC1766_NAME + 1];
    DWORD i;
    HRESULT hr;
    BSTR rfcstr;

    for(i = 0; i < ARRAY_SIZE(lcid_table); i++) {
        buffer[0] = '\0';

        rfcstr = ((void*)0);
        hr = IMultiLanguage2_GetRfc1766FromLcid(iML2, lcid_table[i].lcid, &rfcstr);
        ok(hr == lcid_table[i].hr,
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, hr, lcid_table[i].hr);

        if (hr != S_OK)
            continue;

        WideCharToMultiByte(CP_ACP, 0, rfcstr, -1, buffer, sizeof(buffer), ((void*)0), ((void*)0));
        LCMapStringA(LOCALE_USER_DEFAULT, LCMAP_LOWERCASE, lcid_table[i].rfc1766,
                    lstrlenA(lcid_table[i].rfc1766) + 1, expected, MAX_RFC1766_NAME);


        ok( (!lstrcmpA(buffer, expected)) ||
            broken(!lstrcmpA(buffer, lcid_table[i].broken_rfc)),
            "#%02d: got '%s' (expected '%s')\n", i, buffer, expected);

        SysFreeString(rfcstr);
    }

    hr = IMultiLanguage2_GetRfc1766FromLcid(iML2, MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);
}
