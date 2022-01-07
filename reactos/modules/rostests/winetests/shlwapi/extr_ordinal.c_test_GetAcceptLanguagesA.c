
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int original ;
typedef int language ;
typedef int buffer ;
typedef int PBYTE ;
typedef char* LPCSTR ;
typedef char* LONG ;
typedef int LCID ;
typedef size_t INT ;
typedef char* HRESULT ;
typedef int * HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_CANNOT_COPY ;
 int ERROR_MORE_DATA ;
 char* ERROR_SUCCESS ;
 char* E_FAIL ;
 char* E_INVALIDARG ;
 char* E_NOT_SUFFICIENT_BUFFER ;
 int GetLocaleInfoA (int ,int ,char*,int) ;
 int GetUserDefaultLCID () ;
 int HKEY_CURRENT_USER ;
 int LOCALE_SISO3166CTRYNAME ;
 int LOCALE_SISO639LANGNAME ;
 int LOCALE_SNAME ;
 char* LcidToRfc1766A (int ,char*,int) ;
 int REG_SZ ;
 int RegCloseKey (int *) ;
 int RegDeleteValueA (int *,int ) ;
 char* RegOpenKeyA (int ,int ,int **) ;
 char* RegQueryValueExA (int *,int ,int ,int *,int ,int*) ;
 char* RegSetValueExA (int *,int ,int ,int ,int const*,int) ;
 scalar_t__ SUCCEEDED (char*) ;
 char* S_OK ;
 char* __HRESULT_FROM_WIN32 (int ) ;
 int acceptlanguage ;
 int ie_international ;
 int lstrcatA (char*,char*) ;
 scalar_t__ lstrcmpA (char*,char*) ;
 int lstrlenA (char*) ;
 int memcmp (char*,char*,int) ;
 int memset (char*,char,int) ;
 int ok (int,char*,...) ;
 char* pGetAcceptLanguagesA (char*,int*) ;
 int skip (char*,int ,char*) ;
 int trace (char*,char*) ;
 int win_skip (char*,char*) ;

__attribute__((used)) static void test_GetAcceptLanguagesA(void)
{
    static LPCSTR table[] = {"de,en-gb;q=0.7,en;q=0.3",
                             "de,en;q=0.3,en-gb;q=0.7",
                             "winetest",
                             "de-de,de;q=0.5",
                             "de",
                             ((void*)0)};

    DWORD exactsize;
    char original[512];
    char language[32];
    char buffer[64];
    HKEY hroot = ((void*)0);
    LONG res_query = ERROR_SUCCESS;
    LONG lres;
    HRESULT hr;
    DWORD maxlen = sizeof(buffer) - 2;
    DWORD len;
    LCID lcid;
    LPCSTR entry;
    INT i = 0;

    lcid = GetUserDefaultLCID();


    lres = RegOpenKeyA(HKEY_CURRENT_USER, ie_international, &hroot);
    if (lres) {
        skip("RegOpenKey(%s) failed: %d\n", ie_international, lres);
        return;
    }
    len = sizeof(original);
    original[0] = 0;
    res_query = RegQueryValueExA(hroot, acceptlanguage, 0, ((void*)0), (PBYTE)original, &len);

    RegDeleteValueA(hroot, acceptlanguage);


    memset(language, 0, sizeof(language));
    len = GetLocaleInfoA(lcid, LOCALE_SISO639LANGNAME, language, sizeof(language));

    if (len) {
        lstrcatA(language, "-");
        memset(buffer, 0, sizeof(buffer));
        len = GetLocaleInfoA(lcid, LOCALE_SISO3166CTRYNAME, buffer, sizeof(buffer) - len - 1);
        lstrcatA(language, buffer);
    }
    else
    {

        memset(language, 0, sizeof(language));
        len = GetLocaleInfoA(lcid, LOCALE_SNAME, language, sizeof(language));
    }


    len = maxlen;
    memset(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = pGetAcceptLanguagesA( buffer, &len);

    if (hr != S_OK) {
        win_skip("GetAcceptLanguagesA failed with 0x%x\n", hr);
        goto restore_original;
    }

    if (lstrcmpA(buffer, language)) {

        language[0] = 0;
        hr = LcidToRfc1766A(lcid, language, sizeof(language));
        ok(hr == S_OK, "LcidToRfc1766A returned 0x%x and %s\n", hr, language);
    }

    ok(!lstrcmpA(buffer, language),
        "have '%s' (searching for '%s')\n", language, buffer);

    if (lstrcmpA(buffer, language)) {
        win_skip("no more ideas, how to build the default language '%s'\n", buffer);
        goto restore_original;
    }

    trace("detected default: %s\n", language);
    while ((entry = table[i])) {

        exactsize = lstrlenA(entry);

        lres = RegSetValueExA(hroot, acceptlanguage, 0, REG_SZ, (const BYTE *) entry, exactsize + 1);
        ok(!lres, "got %d for RegSetValueExA: %s\n", lres, entry);


        len = exactsize + 2;
        memset(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = pGetAcceptLanguagesA( buffer, &len);
        ok(((hr == E_INVALIDARG) && (len == 0)) ||
            (SUCCEEDED(hr) &&
            ((len == exactsize) || (len == exactsize+1)) &&
            !lstrcmpA(buffer, entry)),
            "+2_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        len = exactsize + 1;
        memset(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = pGetAcceptLanguagesA( buffer, &len);
        ok(((hr == E_INVALIDARG) && (len == 0)) ||
            (SUCCEEDED(hr) &&
            ((len == exactsize) || (len == exactsize+1)) &&
            !lstrcmpA(buffer, entry)),
            "+1_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        len = exactsize;
        memset(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = pGetAcceptLanguagesA( buffer, &len);
        ok(((hr == E_INVALIDARG) && (len == 0)) ||
            (((hr == S_OK) && !lstrcmpA(buffer, language) && (len == lstrlenA(language))) ||
            ((hr == S_OK) && !memcmp(buffer, language, len)) ||
            ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
            ((hr == __HRESULT_FROM_WIN32(ERROR_MORE_DATA)) && len == exactsize)),
            "==_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        if (exactsize > 1) {
            len = exactsize - 1;
            memset(buffer, '#', maxlen);
            buffer[maxlen] = 0;
            hr = pGetAcceptLanguagesA( buffer, &len);
            ok(((hr == E_INVALIDARG) && (len == 0)) ||
                (((hr == S_OK) && !lstrcmpA(buffer, language) && (len == lstrlenA(language))) ||
                ((hr == S_OK) && !memcmp(buffer, language, len)) ||
                ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
                ((hr == __HRESULT_FROM_WIN32(ERROR_MORE_DATA)) && len == exactsize - 1)),
                "-1_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);
        }

        len = 1;
        memset(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = pGetAcceptLanguagesA( buffer, &len);
        ok(((hr == E_INVALIDARG) && (len == 0)) ||
            (((hr == S_OK) && !lstrcmpA(buffer, language) && (len == lstrlenA(language))) ||
            ((hr == S_OK) && !memcmp(buffer, language, len)) ||
            ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
            ((hr == __HRESULT_FROM_WIN32(ERROR_MORE_DATA)) && len == 1)),
            "=1_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        len = maxlen;
        hr = pGetAcceptLanguagesA( ((void*)0), &len);



        ok( ((hr == S_OK) && ((len == exactsize) || (len == exactsize + 1))) ||
            ((hr == E_FAIL) && (len == maxlen)),
            "NULL,max #%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        i++;
    }


    RegDeleteValueA(hroot, acceptlanguage);

    len = maxlen;
    memset(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = pGetAcceptLanguagesA( buffer, &len);
    ok( ((hr == S_OK) && (len == lstrlenA(language))),
        "max: got 0x%x with %d and %s (expected S_OK with %d and '%s'\n",
        hr, len, buffer, lstrlenA(language), language);

    len = 2;
    memset(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = pGetAcceptLanguagesA( buffer, &len);
    ok( (((hr == S_OK) || (hr == E_INVALIDARG)) && !memcmp(buffer, language, len)) ||
        ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
        ((hr == __HRESULT_FROM_WIN32(ERROR_CANNOT_COPY)) && !len),
        "=2: got 0x%x with %d and %s\n", hr, len, buffer);

    len = 1;
    memset(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = pGetAcceptLanguagesA( buffer, &len);




    ok( (((hr == S_OK) || (hr == E_INVALIDARG)) && !memcmp(buffer, language, len)) ||
        ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
        ((hr == __HRESULT_FROM_WIN32(ERROR_CANNOT_COPY)) && !len),
        "=1: got 0x%x with %d and %s\n", hr, len, buffer);

    len = 0;
    memset(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = pGetAcceptLanguagesA( buffer, &len);

    ok((hr == E_FAIL) || (hr == E_INVALIDARG) || (hr == __HRESULT_FROM_WIN32(ERROR_CANNOT_COPY)),
        "got 0x%x\n", hr);

    memset(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = pGetAcceptLanguagesA( buffer, ((void*)0));

    ok((hr == E_FAIL) || (hr == E_INVALIDARG),
        "got 0x%x (expected E_FAIL or E_INVALIDARG)\n", hr);


    hr = pGetAcceptLanguagesA( ((void*)0), ((void*)0));

    ok((hr == E_FAIL) || (hr == E_INVALIDARG),
        "got 0x%x (expected E_FAIL or E_INVALIDARG)\n", hr);

restore_original:
    if (!res_query) {
        len = lstrlenA(original);
        lres = RegSetValueExA(hroot, acceptlanguage, 0, REG_SZ, (const BYTE *) original, len ? len + 1: 0);
        ok(!lres, "RegSetValueEx(%s) failed: %d\n", original, lres);
    }
    else
    {
        RegDeleteValueA(hroot, acceptlanguage);
    }
    RegCloseKey(hroot);
}
