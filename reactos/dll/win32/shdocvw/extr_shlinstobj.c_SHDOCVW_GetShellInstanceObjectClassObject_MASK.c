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
typedef  int /*<<< orphan*/  wszCLSIDInstance ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  REFCLSID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IPropertyBag ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int CHARS_IN_GUID ; 
 int /*<<< orphan*/  CLASS_E_CLASSNOTAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  IID_IPropertyBag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

HRESULT FUNC13(REFCLSID rclsid, REFIID riid, 
    LPVOID *ppvClassObj)
{
    WCHAR wszInstanceKey[] = { 'C','L','S','I','D','\\','{','0','0','0','0','0','0','0','0','-',
        '0','0','0','0','-','0','0','0','0','-','0','0','0','0','-','0','0','0','0','0','0','0','0',
        '0','0','0','0','}','\\','I','n','s','t','a','n','c','e', 0 };
    static const WCHAR wszCLSID[] = { 'C','L','S','I','D',0 };
    static const WCHAR wszInitPropertyBag[] =
        { 'I','n','i','t','P','r','o','p','e','r','t','y','B','a','g',0 };
    WCHAR wszCLSIDInstance[CHARS_IN_GUID];
    CLSID clsidInstance;
    HKEY hInstanceKey, hInitPropertyBagKey;
    DWORD dwType, cbBytes = sizeof(wszCLSIDInstance);
    IPropertyBag *pInitPropertyBag;
    HRESULT hr;
    LONG res;
        
    FUNC10("(rclsid=%s, riid=%s, ppvClassObject=%p)\n", FUNC11(rclsid), FUNC11(riid), 
          ppvClassObj);

    /* Figure if there is an 'Instance' subkey for the given CLSID and acquire a handle. */
    if (!FUNC9(rclsid, wszInstanceKey + 6, CHARS_IN_GUID))
        return CLASS_E_CLASSNOTAVAILABLE;
    wszInstanceKey[5+CHARS_IN_GUID] = '\\'; /* Repair the null-termination. */
    if (ERROR_SUCCESS != FUNC6(HKEY_CLASSES_ROOT, wszInstanceKey, 0, KEY_READ, &hInstanceKey))
        /* If there is no 'Instance' subkey, then it's not a Shell Instance Object. */
        return CLASS_E_CLASSNOTAVAILABLE;

    if (ERROR_SUCCESS != FUNC7(hInstanceKey, wszCLSID, NULL, &dwType, (LPBYTE)wszCLSIDInstance, &cbBytes) ||
        FUNC1(FUNC0(wszCLSIDInstance, &clsidInstance)))
    {
        /* 'Instance' should have a 'CLSID' value with a well-formed clsid-string. */
        FUNC2("Failed to infer instance CLSID! %s\n", FUNC12(wszCLSIDInstance));
        FUNC5(hInstanceKey);
        return CLASS_E_CLASSNOTAVAILABLE;
    }

    /* Try to open the 'InitPropertyBag' subkey. */
    res = FUNC6(hInstanceKey, wszInitPropertyBag, 0, KEY_READ, &hInitPropertyBagKey);
    FUNC5(hInstanceKey);
    if (res != ERROR_SUCCESS) {
        /* Besides 'InitPropertyBag's, shell instance objects might be initialized by streams.
         * So this case might not be an error. */
        FUNC10("No InitPropertyBag key found!\n");
        return CLASS_E_CLASSNOTAVAILABLE;
    }

    /* If the construction succeeds, the new RegistryPropertyBag is responsible for closing
     * hInitPropertyBagKey. */
    hr = FUNC8(hInitPropertyBagKey, &IID_IPropertyBag,
                                         (LPVOID*)&pInitPropertyBag);
    if (FUNC1(hr)) {
        FUNC5(hInitPropertyBagKey);
        return hr;
    }

    /* Construct an Instance Object Factory, which creates objects of class 'clsidInstance'
     * and asks them to initialize themselves with the help of the 'pInitiPropertyBag' */
    hr = FUNC4(&clsidInstance, pInitPropertyBag, riid, ppvClassObj);
    FUNC3(pInitPropertyBag); /* The factory will hold a reference the bag. */
        
    return hr;
}