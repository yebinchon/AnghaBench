#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {size_t newlen; int /*<<< orphan*/  flags; int /*<<< orphan*/ * url; int /*<<< orphan*/  newurl; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_POINTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* TEST_APPLY ; 
 int TEST_APPLY_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  untouchedA ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    CHAR newurl[TEST_APPLY_MAX_LENGTH];
    WCHAR urlW[TEST_APPLY_MAX_LENGTH];
    WCHAR newurlW[TEST_APPLY_MAX_LENGTH];
    HRESULT res;
    DWORD len;
    DWORD i;

    if (!&pUrlApplySchemeA) {
        FUNC9("UrlApplySchemeA not found\n");
        return;
    }

    for (i = 0; i < FUNC0(TEST_APPLY); i++) {
        len = TEST_APPLY_MAX_LENGTH;
        FUNC4(newurl, untouchedA);
        res = FUNC7(TEST_APPLY[i].url, newurl, &len, TEST_APPLY[i].flags);
        FUNC6( res == TEST_APPLY[i].res,
            "#%dA: got HRESULT 0x%x (expected 0x%x)\n", i, res, TEST_APPLY[i].res);

        FUNC6( len == TEST_APPLY[i].newlen,
            "#%dA: got len %d (expected %d)\n", i, len, TEST_APPLY[i].newlen);

        FUNC6( !FUNC3(newurl, TEST_APPLY[i].newurl),
            "#%dA: got '%s' (expected '%s')\n", i, newurl, TEST_APPLY[i].newurl);

        /* returned length is in character */
        len = TEST_APPLY_MAX_LENGTH;
        FUNC4(newurl, untouchedA);
        FUNC1(CP_ACP, 0, newurl, -1, newurlW, len);
        FUNC1(CP_ACP, 0, TEST_APPLY[i].url, -1, urlW, len);

        res = FUNC8(urlW, newurlW, &len, TEST_APPLY[i].flags);
        FUNC2(CP_ACP, 0, newurlW, -1, newurl, TEST_APPLY_MAX_LENGTH, NULL, NULL);
        FUNC6( res == TEST_APPLY[i].res,
            "#%dW: got HRESULT 0x%x (expected 0x%x)\n", i, res, TEST_APPLY[i].res);

        FUNC6( len == TEST_APPLY[i].newlen,
            "#%dW: got len %d (expected %d)\n", i, len, TEST_APPLY[i].newlen);

        FUNC6( !FUNC3(newurl, TEST_APPLY[i].newurl),
            "#%dW: got '%s' (expected '%s')\n", i, newurl, TEST_APPLY[i].newurl);

    }

    /* buffer too small */
    FUNC4(newurl, untouchedA);
    len = FUNC5(TEST_APPLY[0].newurl);
    res = FUNC7(TEST_APPLY[0].url, newurl, &len, TEST_APPLY[0].flags);
    FUNC6(res == E_POINTER, "got HRESULT 0x%x (expected E_POINTER)\n", res);
    /* The returned length include the space for the terminating 0 */
    i = FUNC5(TEST_APPLY[0].newurl)+1;
    FUNC6(len == i, "got len %d (expected %d)\n", len, i);
    FUNC6(!FUNC3(newurl, untouchedA), "got '%s' (expected '%s')\n", newurl, untouchedA);

    /* NULL as parameter. The length and the buffer are not modified */
    FUNC4(newurl, untouchedA);
    len = TEST_APPLY_MAX_LENGTH;
    res = FUNC7(NULL, newurl, &len, TEST_APPLY[0].flags);
    FUNC6(res == E_INVALIDARG, "got HRESULT 0x%x (expected E_INVALIDARG)\n", res);
    FUNC6(len == TEST_APPLY_MAX_LENGTH, "got len %d\n", len);
    FUNC6(!FUNC3(newurl, untouchedA), "got '%s' (expected '%s')\n", newurl, untouchedA);

    len = TEST_APPLY_MAX_LENGTH;
    res = FUNC7(TEST_APPLY[0].url, NULL, &len, TEST_APPLY[0].flags);
    FUNC6(res == E_INVALIDARG, "got HRESULT 0x%x (expected E_INVALIDARG)\n", res);
    FUNC6(len == TEST_APPLY_MAX_LENGTH, "got len %d\n", len);

    FUNC4(newurl, untouchedA);
    res = FUNC7(TEST_APPLY[0].url, newurl, NULL, TEST_APPLY[0].flags);
    FUNC6(res == E_INVALIDARG, "got HRESULT 0x%x (expected E_INVALIDARG)\n", res);
    FUNC6(!FUNC3(newurl, untouchedA), "got '%s' (expected '%s')\n", newurl, untouchedA);

}