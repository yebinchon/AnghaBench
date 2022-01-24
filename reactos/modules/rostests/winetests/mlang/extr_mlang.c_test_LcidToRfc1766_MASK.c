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
struct TYPE_3__ {int lcid; char* broken_rfc; int /*<<< orphan*/  rfc1766; int /*<<< orphan*/  hr; scalar_t__ broken_lcid; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int LANG_ENGLISH ; 
 int /*<<< orphan*/  LCMAP_LOWERCASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int MAX_RFC1766_NAME ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* lcid_table ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    CHAR expected[MAX_RFC1766_NAME];
    CHAR buffer[MAX_RFC1766_NAME * 2];
    HRESULT hr;
    DWORD i;

    for(i = 0; i < FUNC0(lcid_table); i++) {

        FUNC5(buffer, '#', sizeof(buffer)-1);
        buffer[sizeof(buffer)-1] = '\0';

        hr = FUNC7(lcid_table[i].lcid, buffer, MAX_RFC1766_NAME);

        /* IE <5.0 does not recognize 0x180c (fr-mc) and 0x457 (kok) */
        FUNC6( (hr == lcid_table[i].hr) ||
            FUNC2(lcid_table[i].broken_lcid && (hr == E_FAIL)),
            "#%02d: HRESULT 0x%x (expected 0x%x)\n", i, hr, lcid_table[i].hr);

        if (hr != S_OK)
            continue;

        FUNC1(LOCALE_USER_DEFAULT, LCMAP_LOWERCASE, lcid_table[i].rfc1766,
                    FUNC4(lcid_table[i].rfc1766) + 1, expected, MAX_RFC1766_NAME);

        /* IE <6.0 return "x-kok" for LCID 0x457 ("kok") */
        /* IE <5.0 return "fr" for LCID 0x180c ("fr-mc") */
        FUNC6( (!FUNC3(buffer, expected)) ||
            FUNC2(!FUNC3(buffer, lcid_table[i].broken_rfc)),
            "#%02d: got '%s' (expected '%s')\n", i, buffer, expected);

    }

    FUNC5(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC7(-1, buffer, MAX_RFC1766_NAME);
    FUNC6(hr == E_FAIL, "got 0x%08x and '%s' (expected E_FAIL)\n", hr, buffer);

    hr = FUNC7(LANG_ENGLISH, NULL, MAX_RFC1766_NAME);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x (expected E_INVALIDARG)\n", hr);

    FUNC5(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC7(LANG_ENGLISH, buffer, -1);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x and '%s' (expected E_INVALIDARG)\n", hr, buffer);

    FUNC5(buffer, '#', sizeof(buffer)-1);
    buffer[sizeof(buffer)-1] = '\0';
    hr = FUNC7(LANG_ENGLISH, buffer, 0);
    FUNC6(hr == E_INVALIDARG, "got 0x%08x and '%s' (expected E_INVALIDARG)\n", hr, buffer);
}