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
typedef  float WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IPropertyBag ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPropertyBag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,float const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC11(const WCHAR *wszFilterName, IEnumMoniker *pEnum)
{
    IMoniker *pMoniker = NULL;
    BOOL found = FALSE;
    ULONG nb;
    HRESULT hr;
    static const WCHAR wszFriendlyName[] = {'F','r','i','e','n','d','l','y','N','a','m','e',0};

    while(!found && FUNC0(pEnum, 1, &pMoniker, &nb) == S_OK)
    {
        IPropertyBag * pPropBagCat = NULL;
        VARIANT var;

        FUNC8(&var);

        hr = FUNC1(pMoniker, NULL, NULL, &IID_IPropertyBag, (LPVOID*)&pPropBagCat);
        FUNC10(FUNC5(hr), "IMoniker_BindToStorage failed with %x\n", hr);

        hr = FUNC3(pPropBagCat, wszFriendlyName, &var, NULL);
        FUNC10(FUNC5(hr), "IPropertyBag_Read failed with %x\n", hr);

        if (!FUNC9(FUNC6(&var), wszFilterName))
            found = TRUE;

        FUNC4(pPropBagCat);
        FUNC2(pMoniker);
        FUNC7(&var);
    }

    return found;
}