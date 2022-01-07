
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VARIANT ;
struct TYPE_6__ {int member_3; int member_2; int * member_1; int * member_0; } ;
struct TYPE_5__ {int IActiveScriptSite_iface; int * installer; int * session; } ;
typedef TYPE_1__ MsiActiveScriptSite ;
typedef int MSIHANDLE ;
typedef scalar_t__* LPCWSTR ;
typedef int INT ;
typedef int IDispatch ;
typedef int IActiveScriptParse ;
typedef int IActiveScript ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ DISPPARAMS ;
typedef int DISPID ;
typedef int CLSID ;


 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CLSIDFromProgID (int ,int *) ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int DISPATCH_METHOD ;
 int ERR (char*,...) ;
 int ERROR_INSTALL_FAILURE ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IActiveScriptParse_InitNew (int *) ;
 scalar_t__ IActiveScriptParse_ParseScriptText (int *,scalar_t__*,int *,int *,int *,int ,int ,long,int *,int *) ;
 int IActiveScriptParse_Release (int *) ;
 int IActiveScriptSite_Release (int *) ;
 scalar_t__ IActiveScript_AddNamedItem (int *,int ,int) ;
 scalar_t__ IActiveScript_GetScriptDispatch (int *,int *,int **) ;
 scalar_t__ IActiveScript_QueryInterface (int *,int *,void**) ;
 int IActiveScript_Release (int *) ;
 scalar_t__ IActiveScript_SetScriptSite (int *,int *) ;
 scalar_t__ IActiveScript_SetScriptState (int *,int ) ;
 scalar_t__ IDispatch_GetIDsOfNames (int *,int *,int **,int,int ,int *) ;
 scalar_t__ IDispatch_Invoke (int *,int ,int *,int ,int ,TYPE_2__*,int *,int *,int *) ;
 int IDispatch_Release (int *) ;
 int IID_IActiveScript ;
 int IID_IActiveScriptParse ;
 int IID_NULL ;
 int LOCALE_USER_DEFAULT ;
 int SCRIPTITEM_GLOBALMEMBERS ;
 int SCRIPTITEM_ISVISIBLE ;
 int SCRIPTSTATE_CONNECTED ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ) ;
 int VT_I4 ;
 int V_I4 (int *) ;
 scalar_t__ VariantChangeType (int *,int *,int ,int ) ;
 int VariantClear (int *) ;
 scalar_t__ create_activescriptsite (TYPE_1__**) ;
 scalar_t__ create_msiserver (int *,void**) ;
 scalar_t__ create_session (int ,int *,int **) ;
 int debugstr_w (scalar_t__*) ;
 int map_return_value (int ) ;
 int msidbCustomActionTypeJScript ;
 int msidbCustomActionTypeVBScript ;
 int szJScript ;
 int szSession ;
 int szVBScript ;

DWORD call_script(MSIHANDLE hPackage, INT type, LPCWSTR script, LPCWSTR function, LPCWSTR action)
{
    HRESULT hr;
    IActiveScript *pActiveScript = ((void*)0);
    IActiveScriptParse *pActiveScriptParse = ((void*)0);
    MsiActiveScriptSite *scriptsite;
    IDispatch *pDispatch = ((void*)0);
    DISPPARAMS dispparamsNoArgs = {((void*)0), ((void*)0), 0, 0};
    DISPID dispid;
    CLSID clsid;
    VARIANT var;
    DWORD ret = ERROR_INSTALL_FAILURE;

    CoInitialize(((void*)0));


    hr = create_activescriptsite(&scriptsite);
    if (hr != S_OK) goto done;


    hr = create_msiserver(((void*)0), (void**)&scriptsite->installer);
    if (hr != S_OK) goto done;


    hr = create_session(hPackage, scriptsite->installer, &scriptsite->session);
    if (hr != S_OK) goto done;


    type &= msidbCustomActionTypeJScript|msidbCustomActionTypeVBScript;
    if (type == msidbCustomActionTypeJScript)
        hr = CLSIDFromProgID(szJScript, &clsid);
    else if (type == msidbCustomActionTypeVBScript)
        hr = CLSIDFromProgID(szVBScript, &clsid);
    else {
        ERR("Unknown script type %d\n", type);
        goto done;
    }
    if (FAILED(hr)) {
        ERR("Could not find CLSID for Windows Script\n");
        goto done;
    }
    hr = CoCreateInstance(&clsid, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IActiveScript, (void **)&pActiveScript);
    if (FAILED(hr)) {
        ERR("Could not instantiate class for Windows Script\n");
        goto done;
    }

    hr = IActiveScript_QueryInterface(pActiveScript, &IID_IActiveScriptParse, (void **)&pActiveScriptParse);
    if (FAILED(hr)) goto done;

    hr = IActiveScript_SetScriptSite(pActiveScript, &scriptsite->IActiveScriptSite_iface);
    if (FAILED(hr)) goto done;

    hr = IActiveScriptParse_InitNew(pActiveScriptParse);
    if (FAILED(hr)) goto done;

    hr = IActiveScript_AddNamedItem(pActiveScript, szSession, SCRIPTITEM_GLOBALMEMBERS|SCRIPTITEM_ISVISIBLE);
    if (FAILED(hr)) goto done;

    hr = IActiveScriptParse_ParseScriptText(pActiveScriptParse, script, ((void*)0), ((void*)0), ((void*)0), 0, 0, 0L, ((void*)0), ((void*)0));
    if (FAILED(hr)) goto done;

    hr = IActiveScript_SetScriptState(pActiveScript, SCRIPTSTATE_CONNECTED);
    if (FAILED(hr)) goto done;


    if (function && function[0]) {
        TRACE("Calling function %s\n", debugstr_w(function));

        hr = IActiveScript_GetScriptDispatch(pActiveScript, ((void*)0), &pDispatch);
        if (FAILED(hr)) goto done;

        hr = IDispatch_GetIDsOfNames(pDispatch, &IID_NULL, (WCHAR **)&function, 1,LOCALE_USER_DEFAULT, &dispid);
        if (FAILED(hr)) goto done;

        hr = IDispatch_Invoke(pDispatch, dispid, &IID_NULL, LOCALE_USER_DEFAULT, DISPATCH_METHOD, &dispparamsNoArgs, &var, ((void*)0), ((void*)0));
        if (FAILED(hr)) goto done;

        hr = VariantChangeType(&var, &var, 0, VT_I4);
        if (FAILED(hr)) goto done;

        ret = map_return_value(V_I4(&var));

        VariantClear(&var);
    } else {

        ret = ERROR_SUCCESS;
    }

done:

    if (pDispatch) IDispatch_Release(pDispatch);
    if (pActiveScript) IActiveScript_Release(pActiveScript);
    if (pActiveScriptParse) IActiveScriptParse_Release(pActiveScriptParse);
    if (scriptsite)
    {
        if (scriptsite->session) IDispatch_Release(scriptsite->session);
        if (scriptsite->installer) IDispatch_Release(scriptsite->installer);
        IActiveScriptSite_Release(&scriptsite->IActiveScriptSite_iface);
    }
    CoUninitialize();
    return ret;
}
