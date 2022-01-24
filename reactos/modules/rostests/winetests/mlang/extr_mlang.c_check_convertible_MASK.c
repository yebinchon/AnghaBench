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
typedef  int /*<<< orphan*/  ch ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  IMultiLanguage2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CP_UTF8 ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,char*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int MAX_PATH ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int WC_COMPOSITECHECK ; 
 int WC_DEFAULTCHAR ; 
 int WC_NO_BEST_FIT_CHARS ; 
 int FUNC2 (scalar_t__,int,char*,int,char*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC5(IMultiLanguage2 *iML2, UINT from, UINT to)
{
    CHAR convert[MAX_PATH];
    BYTE dest[MAX_PATH];
    HRESULT hr;
    UINT srcsz, destsz;

    static WCHAR strW[] = {'a','b','c',0};

    /* Check to see if the target codepage has these characters or not */
    if (from != CP_UTF8)
    {
        BOOL fDefaultChar;
        char ch[10];
        int cb;
        cb = FUNC2( from, WC_NO_BEST_FIT_CHARS | WC_COMPOSITECHECK | WC_DEFAULTCHAR,
                                  strW, 3, ch, sizeof(ch), NULL, &fDefaultChar);

        if(cb == 0 || fDefaultChar)
        {
            FUNC4("target codepage %i does not contain 'abc'\n",from);
            return E_FAIL;
        }
    }

    srcsz = FUNC3(strW) + 1;
    destsz = MAX_PATH;
    hr = FUNC1(iML2, NULL, from, strW,
                                                  &srcsz, convert, &destsz);
    if (hr != S_OK)
        return S_FALSE;

    srcsz = -1;
    destsz = MAX_PATH;
    hr = FUNC0(iML2, NULL, from, to, (BYTE *)convert,
                                       &srcsz, dest, &destsz);
    if (hr != S_OK)
        return S_FALSE;

    return S_OK;
}