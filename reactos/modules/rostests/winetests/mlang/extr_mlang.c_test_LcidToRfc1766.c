
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_3__ {int lcid; char* broken_rfc; int rfc1766; int hr; scalar_t__ broken_lcid; } ;
typedef int HRESULT ;
typedef size_t DWORD ;
typedef char CHAR ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int E_FAIL ;
 int E_INVALIDARG ;
 int LANG_ENGLISH ;
 int LCMAP_LOWERCASE ;
 int LCMapStringA (int ,int ,int ,scalar_t__,char*,int) ;
 int LOCALE_USER_DEFAULT ;
 int MAX_RFC1766_NAME ;
 int S_OK ;
 scalar_t__ broken (int) ;
 TYPE_1__* lcid_table ;
 int lstrcmpA (char*,char*) ;
 scalar_t__ lstrlenA (int ) ;
 int memset (char*,char,int) ;
 int ok (int,char*,size_t,...) ;
 int pLcidToRfc1766A (int,char*,int) ;

__attribute__((used)) static void test_LcidToRfc1766(void)
{
    CHAR expected[MAX_RFC1766_NAME];
    CHAR buffer[MAX_RFC1766_NAME * 2];
    HRESULT hr;
    DWORD i;

    for(i = 0; i < ARRAY_SIZE(lcid_table); i++) {

        memset(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';

        hr = pLcidToRfc1766A(lcid_table[i].lcid, buffer, MAX_RFC1766_NAME);


        ok( (hr == lcid_table[i].hr) ||
            broken(lcid_table[i].broken_lcid && (hr == E_FAIL)),
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, hr, lcid_table[i].hr);

        if (hr != S_OK)
            continue;

        LCMapStringA(LOCALE_USER_DEFAULT, LCMAP_LOWERCASE, lcid_table[i].rfc1766,
                    lstrlenA(lcid_table[i].rfc1766) + 1, expected, MAX_RFC1766_NAME);



        ok( (!lstrcmpA(buffer, expected)) ||
            broken(!lstrcmpA(buffer, lcid_table[i].broken_rfc)),
            "#%02d: got '%s' (expected '%s')\n", i, buffer, expected);

    }

    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pLcidToRfc1766A(-1, buffer, MAX_RFC1766_NAME);
    ok(hr == E_FAIL, "got 0x%08x and '%s' (expected E_FAIL)\n", hr, buffer);

    hr = pLcidToRfc1766A(LANG_ENGLISH, ((void*)0), MAX_RFC1766_NAME);
    ok(hr == E_INVALIDARG, "got 0x%08x (expected E_INVALIDARG)\n", hr);

    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pLcidToRfc1766A(LANG_ENGLISH, buffer, -1);
    ok(hr == E_INVALIDARG, "got 0x%08x and '%s' (expected E_INVALIDARG)\n", hr, buffer);

    memset(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = pLcidToRfc1766A(LANG_ENGLISH, buffer, 0);
    ok(hr == E_INVALIDARG, "got 0x%08x and '%s' (expected E_INVALIDARG)\n", hr, buffer);
}
