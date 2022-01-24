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
typedef  int /*<<< orphan*/  mbs ;
typedef  char WCHAR ;
typedef  int* LPBOOL ;

/* Variables and functions */
 int ERROR_INSUFFICIENT_BUFFER ; 
 int FALSE ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  WC_COMPOSITECHECK ; 
 int FUNC3 (int,int /*<<< orphan*/ ,char const*,int,char*,int,char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(LPBOOL bUsedDefaultChar)
{
    char mbc;
    char mbs[15];
    int ret;
    WCHAR wc1 = 228;                           /* Western Windows-1252 character */
    WCHAR wc2 = 1088;                          /* Russian Windows-1251 character not displayable for Windows-1252 */
    static const WCHAR wcs[] = {'T', 'h', 1088, 'i', 0}; /* String with ASCII characters and a Russian character */
    static const WCHAR dbwcs[] = {28953, 25152, 0}; /* String with Chinese (codepage 950) characters */
    static const WCHAR dbwcs2[] = {0x7bb8, 0x3d, 0xc813, 0xac00, 0xb77d, 0};
    static const char default_char[] = {0xa3, 0xbf, 0};

    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, &wc1, 1, &mbc, 1, NULL, bUsedDefaultChar);
    FUNC6(ret == 1, "ret is %d\n", ret);
    FUNC6(mbc == '\xe4', "mbc is %d\n", mbc);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, &wc2, 1, &mbc, 1, NULL, bUsedDefaultChar);
    FUNC6(ret == 1, "ret is %d\n", ret);
    FUNC6(mbc == 63, "mbc is %d\n", mbc);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    if (FUNC1(1251))
    {
        FUNC2(0xdeadbeef);
        ret = FUNC3(1251, 0, &wc2, 1, &mbc, 1, NULL, bUsedDefaultChar);
        FUNC6(ret == 1, "ret is %d\n", ret);
        FUNC6(mbc == '\xf0', "mbc is %d\n", mbc);
        if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
        FUNC6(FUNC0() == 0xdeadbeef ||
           FUNC5(FUNC0() == 0), /* win95 */
           "GetLastError() is %u\n", FUNC0());

        FUNC2(0xdeadbeef);
        ret = FUNC3(1251, 0, &wc1, 1, &mbc, 1, NULL, bUsedDefaultChar);
        FUNC6(ret == 1, "ret is %d\n", ret);
        FUNC6(mbc == 97, "mbc is %d\n", mbc);
        if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
        FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());
    }
    else
        FUNC7("Codepage 1251 not available\n");

    /* This call triggers the last Win32 error */
    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, wcs, -1, &mbc, 1, NULL, bUsedDefaultChar);
    FUNC6(ret == 0, "ret is %d\n", ret);
    FUNC6(mbc == 84, "mbc is %d\n", mbc);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "GetLastError() is %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, wcs, -1, mbs, sizeof(mbs), NULL, bUsedDefaultChar);
    FUNC6(ret == 5, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "Th?i"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());
    mbs[0] = 0;

    /* WideCharToMultiByte mustn't add any null character automatically.
       So in this case, we should get the same string again, even if we only copied the first three bytes. */
    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, wcs, 3, mbs, sizeof(mbs), NULL, bUsedDefaultChar);
    FUNC6(ret == 3, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "Th?i"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());
    FUNC4(mbs, 5);

    /* Now this shouldn't be the case like above as we zeroed the complete string buffer. */
    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, wcs, 3, mbs, sizeof(mbs), NULL, bUsedDefaultChar);
    FUNC6(ret == 3, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "Th?"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    /* Double-byte tests */
    ret = FUNC3(1252, 0, dbwcs, 3, mbs, sizeof(mbs), NULL, bUsedDefaultChar);
    FUNC6(ret == 3, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "??"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);

    ret = FUNC3(936, WC_COMPOSITECHECK, dbwcs2, -1, mbs, sizeof(mbs), (const char *)default_char, bUsedDefaultChar);
    FUNC6(ret == 10, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "\xf3\xe7\x3d\xa3\xbf\xa3\xbf\xa3\xbf"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);

    /* Length-only tests */
    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, &wc2, 1, NULL, 0, NULL, bUsedDefaultChar);
    FUNC6(ret == 1, "ret is %d\n", ret);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(1252, 0, wcs, -1, NULL, 0, NULL, bUsedDefaultChar);
    FUNC6(ret == 5, "ret is %d\n", ret);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == TRUE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    if (!FUNC1(950))
    {
        FUNC7("Codepage 950 not available\n");
        return;
    }

    /* Double-byte tests */
    FUNC2(0xdeadbeef);
    ret = FUNC3(950, 0, dbwcs, -1, mbs, sizeof(mbs), NULL, bUsedDefaultChar);
    FUNC6(ret == 5, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "\xb5H\xa9\xd2"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(950, 0, dbwcs, 1, &mbc, 1, NULL, bUsedDefaultChar);
    FUNC6(ret == 0, "ret is %d\n", ret);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == ERROR_INSUFFICIENT_BUFFER, "GetLastError() is %u\n", FUNC0());
    FUNC4(mbs, 5);

    FUNC2(0xdeadbeef);
    ret = FUNC3(950, 0, dbwcs, 1, mbs, sizeof(mbs), NULL, bUsedDefaultChar);
    FUNC6(ret == 2, "ret is %d\n", ret);
    FUNC6(!FUNC8(mbs, "\xb5H"), "mbs is %s\n", mbs);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    /* Length-only tests */
    FUNC2(0xdeadbeef);
    ret = FUNC3(950, 0, dbwcs, 1, NULL, 0, NULL, bUsedDefaultChar);
    FUNC6(ret == 2, "ret is %d\n", ret);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());

    FUNC2(0xdeadbeef);
    ret = FUNC3(950, 0, dbwcs, -1, NULL, 0, NULL, bUsedDefaultChar);
    FUNC6(ret == 5, "ret is %d\n", ret);
    if(bUsedDefaultChar) FUNC6(*bUsedDefaultChar == FALSE, "bUsedDefaultChar is %d\n", *bUsedDefaultChar);
    FUNC6(FUNC0() == 0xdeadbeef, "GetLastError() is %u\n", FUNC0());
}