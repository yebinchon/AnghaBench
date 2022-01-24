#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  IActiveScriptSite_iface; int /*<<< orphan*/ * installer; int /*<<< orphan*/ * session; } ;
typedef  TYPE_1__ MsiActiveScriptSite ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  scalar_t__* LPCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_2__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  ERROR_INSTALL_FAILURE ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScript ; 
 int /*<<< orphan*/  IID_IActiveScriptParse ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int SCRIPTITEM_GLOBALMEMBERS ; 
 int SCRIPTITEM_ISVISIBLE ; 
 int /*<<< orphan*/  SCRIPTSTATE_CONNECTED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_I4 ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (TYPE_1__**) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int msidbCustomActionTypeJScript ; 
 int msidbCustomActionTypeVBScript ; 
 int /*<<< orphan*/  szJScript ; 
 int /*<<< orphan*/  szSession ; 
 int /*<<< orphan*/  szVBScript ; 

DWORD FUNC28(MSIHANDLE hPackage, INT type, LPCWSTR script, LPCWSTR function, LPCWSTR action)
{
    HRESULT hr;
    IActiveScript *pActiveScript = NULL;
    IActiveScriptParse *pActiveScriptParse = NULL;
    MsiActiveScriptSite *scriptsite;
    IDispatch *pDispatch = NULL;
    DISPPARAMS dispparamsNoArgs = {NULL, NULL, 0, 0};
    DISPID dispid;
    CLSID clsid;
    VARIANT var;
    DWORD ret = ERROR_INSTALL_FAILURE;

    FUNC2(NULL);

    /* Create MsiActiveScriptSite object */
    hr = FUNC23(&scriptsite);
    if (hr != S_OK) goto done;

    /* Create an installer object */
    hr = FUNC24(NULL, (void**)&scriptsite->installer);
    if (hr != S_OK) goto done;

    /* Create a session object */
    hr = FUNC25(hPackage, scriptsite->installer, &scriptsite->session);
    if (hr != S_OK) goto done;

    /* Create the scripting engine */
    type &= msidbCustomActionTypeJScript|msidbCustomActionTypeVBScript;
    if (type == msidbCustomActionTypeJScript)
        hr = FUNC0(szJScript, &clsid);
    else if (type == msidbCustomActionTypeVBScript)
        hr = FUNC0(szVBScript, &clsid);
    else {
        FUNC4("Unknown script type %d\n", type);
        goto done;
    }
    if (FUNC5(hr)) {
        FUNC4("Could not find CLSID for Windows Script\n");
        goto done;
    }
    hr = FUNC1(&clsid, NULL, CLSCTX_INPROC_SERVER, &IID_IActiveScript, (void **)&pActiveScript);
    if (FUNC5(hr)) {
        FUNC4("Could not instantiate class for Windows Script\n");
        goto done;
    }

    hr = FUNC12(pActiveScript, &IID_IActiveScriptParse, (void **)&pActiveScriptParse);
    if (FUNC5(hr)) goto done;

    hr = FUNC14(pActiveScript, &scriptsite->IActiveScriptSite_iface);
    if (FUNC5(hr)) goto done;

    hr = FUNC6(pActiveScriptParse);
    if (FUNC5(hr)) goto done;

    hr = FUNC10(pActiveScript, szSession, SCRIPTITEM_GLOBALMEMBERS|SCRIPTITEM_ISVISIBLE);
    if (FUNC5(hr)) goto done;

    hr = FUNC7(pActiveScriptParse, script, NULL, NULL, NULL, 0, 0, 0L, NULL, NULL);
    if (FUNC5(hr)) goto done;

    hr = FUNC15(pActiveScript, SCRIPTSTATE_CONNECTED);
    if (FUNC5(hr)) goto done;

    /* Call a function if necessary through the IDispatch interface */
    if (function && function[0]) {
        FUNC19("Calling function %s\n", FUNC26(function));

        hr = FUNC11(pActiveScript, NULL, &pDispatch);
        if (FUNC5(hr)) goto done;

        hr = FUNC16(pDispatch, &IID_NULL, (WCHAR **)&function, 1,LOCALE_USER_DEFAULT, &dispid);
        if (FUNC5(hr)) goto done;

        hr = FUNC17(pDispatch, dispid, &IID_NULL, LOCALE_USER_DEFAULT, DISPATCH_METHOD, &dispparamsNoArgs, &var, NULL, NULL);
        if (FUNC5(hr)) goto done;

        hr = FUNC21(&var, &var, 0, VT_I4);
        if (FUNC5(hr)) goto done;

        ret = FUNC27(FUNC20(&var));

        FUNC22(&var);
    } else {
        /* If no function to be called, MSI behavior is to succeed */
        ret = ERROR_SUCCESS;
    }

done:

    if (pDispatch) FUNC18(pDispatch);
    if (pActiveScript) FUNC13(pActiveScript);
    if (pActiveScriptParse) FUNC8(pActiveScriptParse);
    if (scriptsite)
    {
        if (scriptsite->session) FUNC18(scriptsite->session);
        if (scriptsite->installer) FUNC18(scriptsite->installer);
        FUNC9(&scriptsite->IActiveScriptSite_iface);
    }
    FUNC3();    /* must call even if CoInitialize failed */
    return ret;
}