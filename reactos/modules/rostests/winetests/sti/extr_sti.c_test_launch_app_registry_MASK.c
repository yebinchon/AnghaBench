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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IStillImageW ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_ACCESSDENIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int STI_VERSION_FLAG_UNICODE ; 
 int STI_VERSION_REAL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pStiCreateInstanceW ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    static WCHAR appName[] = {'w','i','n','e','s','t','i','t','e','s','t','a','p','p',0};
    IStillImageW *pStiW = NULL;
    HRESULT hr;

    if (pStiCreateInstanceW == NULL)
    {
        FUNC8("No StiCreateInstanceW function\n");
        return;
    }

    hr = FUNC6(FUNC0(NULL), STI_VERSION_REAL | STI_VERSION_FLAG_UNICODE, &pStiW, NULL);
    if (FUNC4(hr))
    {
        hr = FUNC1(pStiW, appName, appName);
        if (hr == E_ACCESSDENIED)
            FUNC7("Not authorized to register a launch application\n");
        else if (FUNC4(hr))
        {
            hr = FUNC3(pStiW, appName);
            FUNC5(FUNC4(hr), "could not unregister launch application, error 0x%X\n", hr);
        }
        else
            FUNC5(0, "could not register launch application, error 0x%X\n", hr);
        FUNC2(pStiW);
    }
    else
        FUNC5(0, "could not create StillImageW, hr = 0x%X\n", hr);
}