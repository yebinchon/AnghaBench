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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {char* broken_rfc; int /*<<< orphan*/  rfc1766; int /*<<< orphan*/  hr; int /*<<< orphan*/  lcid; } ;
typedef  int /*<<< orphan*/  IMultiLanguage2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LCMAP_LOWERCASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_RFC1766_NAME ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_1__* lcid_table ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,size_t,...) ; 

__attribute__((used)) static void FUNC10(IMultiLanguage2 *iML2)
{
    CHAR expected[MAX_RFC1766_NAME];
    CHAR buffer[MAX_RFC1766_NAME + 1];
    DWORD i;
    HRESULT hr;
    BSTR rfcstr;

    for(i = 0; i < FUNC0(lcid_table); i++) {
        buffer[0] = '\0';

        rfcstr = NULL;
        hr = FUNC1(iML2, lcid_table[i].lcid, &rfcstr);
        FUNC9(hr == lcid_table[i].hr,
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, hr, lcid_table[i].hr);

        if (hr != S_OK)
            continue;   /* no result-string created */

        FUNC5(CP_ACP, 0, rfcstr, -1, buffer, sizeof(buffer), NULL, NULL);
        FUNC2(LOCALE_USER_DEFAULT, LCMAP_LOWERCASE, lcid_table[i].rfc1766,
                    FUNC8(lcid_table[i].rfc1766) + 1, expected, MAX_RFC1766_NAME);

        /* IE <6.0 return "x-kok" for LCID 0x457 ("kok") */
        FUNC9( (!FUNC7(buffer, expected)) ||
            FUNC6(!FUNC7(buffer, lcid_table[i].broken_rfc)),
            "#%02d: got '%s' (expected '%s')\n", i, buffer, expected);

        FUNC4(rfcstr);
    }

    hr = FUNC1(iML2, FUNC3(LANG_ENGLISH, SUBLANG_ENGLISH_US), NULL);
    FUNC9(hr == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hr);
}