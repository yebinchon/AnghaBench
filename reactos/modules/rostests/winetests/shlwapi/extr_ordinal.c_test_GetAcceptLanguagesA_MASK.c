#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  original ;
typedef  int /*<<< orphan*/  language ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  char* LPCSTR ;
typedef  char* LONG ;
typedef  int /*<<< orphan*/  LCID ;
typedef  size_t INT ;
typedef  char* HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_CANNOT_COPY ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 char* ERROR_SUCCESS ; 
 char* E_FAIL ; 
 char* E_INVALIDARG ; 
 char* E_NOT_SUFFICIENT_BUFFER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  LOCALE_SISO3166CTRYNAME ; 
 int /*<<< orphan*/  LOCALE_SISO639LANGNAME ; 
 int /*<<< orphan*/  LOCALE_SNAME ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* S_OK ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acceptlanguage ; 
 int /*<<< orphan*/  ie_international ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 char* FUNC16 (char*,int*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 

__attribute__((used)) static void FUNC20(void)
{
    static LPCSTR table[] = {"de,en-gb;q=0.7,en;q=0.3",
                             "de,en;q=0.3,en-gb;q=0.7", /* sorting is ignored */
                             "winetest",    /* content is ignored */
                             "de-de,de;q=0.5",
                             "de",
                             NULL};

    DWORD exactsize;
    char original[512];
    char language[32];
    char buffer[64];
    HKEY hroot = NULL;
    LONG res_query = ERROR_SUCCESS;
    LONG lres;
    HRESULT hr;
    DWORD maxlen = sizeof(buffer) - 2;
    DWORD len;
    LCID lcid;
    LPCSTR entry;
    INT i = 0;

    lcid = FUNC1();

    /* Get the original Value */
    lres = FUNC5(HKEY_CURRENT_USER, ie_international, &hroot);
    if (lres) {
        FUNC17("RegOpenKey(%s) failed: %d\n", ie_international, lres);
        return;
    }
    len = sizeof(original);
    original[0] = 0;
    res_query = FUNC6(hroot, acceptlanguage, 0, NULL, (PBYTE)original, &len);

    FUNC4(hroot, acceptlanguage);

    /* Some windows versions use "lang-COUNTRY" as default */
    FUNC14(language, 0, sizeof(language));
    len = FUNC0(lcid, LOCALE_SISO639LANGNAME, language, sizeof(language));

    if (len) {
        FUNC10(language, "-");
        FUNC14(buffer, 0, sizeof(buffer));
        len = FUNC0(lcid, LOCALE_SISO3166CTRYNAME, buffer, sizeof(buffer) - len - 1);
        FUNC10(language, buffer);
    }
    else
    {
        /* LOCALE_SNAME has additional parts in some languages. Try only as last chance */
        FUNC14(language, 0, sizeof(language));
        len = FUNC0(lcid, LOCALE_SNAME, language, sizeof(language));
    }

    /* get the default value */
    len = maxlen;
    FUNC14(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = FUNC16( buffer, &len);

    if (hr != S_OK) {
        FUNC19("GetAcceptLanguagesA failed with 0x%x\n", hr);
        goto restore_original;
    }

    if (FUNC11(buffer, language)) {
        /* some windows versions use "lang" or "lang-country" as default */
        language[0] = 0;
        hr = FUNC2(lcid, language, sizeof(language));
        FUNC15(hr == S_OK, "LcidToRfc1766A returned 0x%x and %s\n", hr, language);
    }

    FUNC15(!FUNC11(buffer, language),
        "have '%s' (searching for '%s')\n", language, buffer);

    if (FUNC11(buffer, language)) {
        FUNC19("no more ideas, how to build the default language '%s'\n", buffer);
        goto restore_original;
    }

    FUNC18("detected default: %s\n", language);
    while ((entry = table[i])) {

        exactsize = FUNC12(entry);

        lres = FUNC7(hroot, acceptlanguage, 0, REG_SZ, (const BYTE *) entry, exactsize + 1);
        FUNC15(!lres, "got %d for RegSetValueExA: %s\n", lres, entry);

        /* len includes space for the terminating 0 before vista/w2k8 */
        len = exactsize + 2;
        FUNC14(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = FUNC16( buffer, &len);
        FUNC15(((hr == E_INVALIDARG) && (len == 0)) ||
            (FUNC8(hr) &&
            ((len == exactsize) || (len == exactsize+1)) &&
            !FUNC11(buffer, entry)),
            "+2_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        len = exactsize + 1;
        FUNC14(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = FUNC16( buffer, &len);
        FUNC15(((hr == E_INVALIDARG) && (len == 0)) ||
            (FUNC8(hr) &&
            ((len == exactsize) || (len == exactsize+1)) &&
            !FUNC11(buffer, entry)),
            "+1_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        len = exactsize;
        FUNC14(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = FUNC16( buffer, &len);

        /* There is no space for the string in the registry.
           When the buffer is large enough, the default language is returned

           When the buffer is too small for that fallback, win7_32 and w2k8_64
           fail with E_NOT_SUFFICIENT_BUFFER, win8 fails with HRESULT_FROM_WIN32(ERROR_MORE_DATA),
           other versions succeed and return a partial result while older os succeed
           and overflow the buffer */

        FUNC15(((hr == E_INVALIDARG) && (len == 0)) ||
            (((hr == S_OK) && !FUNC11(buffer, language)  && (len == FUNC12(language))) ||
            ((hr == S_OK) && !FUNC13(buffer, language, len)) ||
            ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
            ((hr == FUNC9(ERROR_MORE_DATA)) && len == exactsize)),
            "==_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        if (exactsize > 1) {
            len = exactsize - 1;
            FUNC14(buffer, '#', maxlen);
            buffer[maxlen] = 0;
            hr = FUNC16( buffer, &len);
            FUNC15(((hr == E_INVALIDARG) && (len == 0)) ||
                (((hr == S_OK) && !FUNC11(buffer, language)  && (len == FUNC12(language))) ||
                ((hr == S_OK) && !FUNC13(buffer, language, len)) ||
                ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
                ((hr == FUNC9(ERROR_MORE_DATA)) && len == exactsize - 1)),
                "-1_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);
        }

        len = 1;
        FUNC14(buffer, '#', maxlen);
        buffer[maxlen] = 0;
        hr = FUNC16( buffer, &len);
        FUNC15(((hr == E_INVALIDARG) && (len == 0)) ||
            (((hr == S_OK) && !FUNC11(buffer, language)  && (len == FUNC12(language))) ||
            ((hr == S_OK) && !FUNC13(buffer, language, len)) ||
            ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
            ((hr == FUNC9(ERROR_MORE_DATA)) && len == 1)),
            "=1_#%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        len = maxlen;
        hr = FUNC16( NULL, &len);

        /* w2k3 and below: E_FAIL and untouched len,
           since w2k8: S_OK and needed size (excluding 0), win8 S_OK and size including 0. */
        FUNC15( ((hr == S_OK) && ((len == exactsize) || (len == exactsize + 1))) ||
            ((hr == E_FAIL) && (len == maxlen)),
            "NULL,max #%d: got 0x%x with %d and %s\n", i, hr, len, buffer);

        i++;
    }

    /* without a value in the registry, a default language is returned */
    FUNC4(hroot, acceptlanguage);

    len = maxlen;
    FUNC14(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = FUNC16( buffer, &len);
    FUNC15( ((hr == S_OK) && (len == FUNC12(language))),
        "max: got 0x%x with %d and %s (expected S_OK with %d and '%s'\n",
        hr, len, buffer, FUNC12(language), language);

    len = 2;
    FUNC14(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = FUNC16( buffer, &len);
    FUNC15( (((hr == S_OK) || (hr == E_INVALIDARG)) && !FUNC13(buffer, language, len)) ||
        ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
        ((hr == FUNC9(ERROR_CANNOT_COPY)) && !len),
        "=2: got 0x%x with %d and %s\n", hr, len, buffer);

    len = 1;
    FUNC14(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = FUNC16( buffer, &len);
    /* When the buffer is too small, win7_32 and w2k8_64 and above fail with
       E_NOT_SUFFICIENT_BUFFER, win8 ERROR_CANNOT_COPY,
       other versions succeed and return a partial 0 terminated result while other versions
       fail with E_INVALIDARG and return a partial unterminated result */
    FUNC15( (((hr == S_OK) || (hr == E_INVALIDARG)) && !FUNC13(buffer, language, len)) ||
        ((hr == E_NOT_SUFFICIENT_BUFFER) && !len) ||
        ((hr == FUNC9(ERROR_CANNOT_COPY)) && !len),
        "=1: got 0x%x with %d and %s\n", hr, len, buffer);

    len = 0;
    FUNC14(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = FUNC16( buffer, &len);
    /* w2k3 and below: E_FAIL, since w2k8: E_INVALIDARG, win8 ERROR_CANNOT_COPY */
    FUNC15((hr == E_FAIL) || (hr == E_INVALIDARG) || (hr == FUNC9(ERROR_CANNOT_COPY)),
        "got 0x%x\n", hr);

    FUNC14(buffer, '#', maxlen);
    buffer[maxlen] = 0;
    hr = FUNC16( buffer, NULL);
    /* w2k3 and below: E_FAIL, since w2k8: E_INVALIDARG */
    FUNC15((hr == E_FAIL) || (hr == E_INVALIDARG),
        "got 0x%x (expected E_FAIL or E_INVALIDARG)\n", hr);


    hr = FUNC16( NULL, NULL);
    /* w2k3 and below: E_FAIL, since w2k8: E_INVALIDARG */
    FUNC15((hr == E_FAIL) || (hr == E_INVALIDARG),
        "got 0x%x (expected E_FAIL or E_INVALIDARG)\n", hr);

restore_original:
    if (!res_query) {
        len = FUNC12(original);
        lres = FUNC7(hroot, acceptlanguage, 0, REG_SZ, (const BYTE *) original, len ? len + 1: 0);
        FUNC15(!lres, "RegSetValueEx(%s) failed: %d\n", original, lres);
    }
    else
    {
        FUNC4(hroot, acceptlanguage);
    }
    FUNC3(hroot);
}