
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int LowPart; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
typedef int IUriBuilderFactory ;
typedef int IUriBuilder ;
typedef int IUri ;
typedef int IPersistStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSTR ;
typedef int BOOL ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_CUri ;
 int CoCreateInstance (int *,int *,int,int *,void**) ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int) ;
 int IID_IPersistStream ;
 int IID_IUri ;
 int IID_IUriBuilderFactory ;
 int IPersistStream_GetSizeMax (int *,TYPE_2__*) ;
 int IPersistStream_IsDirty (int *) ;
 int IPersistStream_Release (int *) ;
 int IUriBuilderFactory_CreateIUriBuilder (int *,int ,int ,int **) ;
 int IUriBuilderFactory_CreateInitializedIUriBuilder (int *,int ,int ,int **) ;
 int IUriBuilderFactory_Release (int *) ;
 int IUriBuilder_Release (int *) ;
 int IUri_GetAbsoluteUri (int *,int *) ;
 int IUri_GetAuthority (int *,int *) ;
 int IUri_GetDisplayUri (int *,int *) ;
 int IUri_GetDomain (int *,int *) ;
 int IUri_GetExtension (int *,int *) ;
 int IUri_GetFragment (int *,int *) ;
 int IUri_GetHost (int *,int *) ;
 int IUri_GetHostType (int *,int *) ;
 int IUri_GetPassword (int *,int *) ;
 int IUri_GetPathAndQuery (int *,int *) ;
 int IUri_GetPort (int *,int *) ;
 int IUri_GetProperties (int *,int *) ;
 int IUri_GetPropertyBSTR (int *,int ,int *,int ) ;
 int IUri_GetPropertyDWORD (int *,int ,int *,int ) ;
 int IUri_GetPropertyLength (int *,int ,int *,int ) ;
 int IUri_GetQuery (int *,int *) ;
 int IUri_GetRawUri (int *,int *) ;
 int IUri_GetScheme (int *,int *) ;
 int IUri_GetSchemeName (int *,int *) ;
 int IUri_GetUserInfo (int *,int *) ;
 int IUri_GetUserName (int *,int *) ;
 int IUri_GetZone (int *,int *) ;
 int IUri_IsEqual (int *,int *,int *) ;
 int IUri_QueryInterface (int *,int *,void**) ;
 int IUri_Release (int *) ;
 int S_FALSE ;
 int S_OK ;
 int Uri_PROPERTY_PORT ;
 int Uri_PROPERTY_RAW_URI ;
 int ok (int,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UninitializedUri(void)
{
    IUri *uri;
    IUriBuilderFactory *ubf;
    IPersistStream *ps;
    IUriBuilder *ub;
    BSTR bstr;
    DWORD dword;
    BOOL eq;
    ULARGE_INTEGER ui;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_CUri, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUri, (void**)&uri);
    if(FAILED(hr)) {
        win_skip("Skipping uninitialized Uri tests.\n");
        return;
    }

    hr = IUri_QueryInterface(uri, &IID_IUriBuilderFactory, (void**)&ubf);
    ok(hr == S_OK, "QueryInterface(IID_IUriBuillderFactory) failed: %x.\n", hr);
    hr = IUri_QueryInterface(uri, &IID_IPersistStream, (void**)&ps);
    ok(hr == S_OK, "QueryInterface(IID_IPersistStream) failed: %x.\n", hr);

    hr = IUri_GetAbsoluteUri(uri, ((void*)0));
    ok(hr == E_UNEXPECTED, "GetAbsoluteUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetAbsoluteUri(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetAbsoluteUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetAuthority(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetAuthority returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetDisplayUri(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetDisplayUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetDomain(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetDomain returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetExtension(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetExtension returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetFragment(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetFragment returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetHost(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetHost returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetHostType(uri, &dword);
    ok(hr == E_UNEXPECTED, "GetHostType returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPassword(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetPassword returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPassword(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetPassword returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPathAndQuery(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetPathAndQuery returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPort(uri, &dword);
    ok(hr == E_UNEXPECTED, "GetPort returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetProperties(uri, &dword);
    ok(hr == E_UNEXPECTED, "GetProperties returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPropertyBSTR(uri, Uri_PROPERTY_RAW_URI, &bstr, 0);
    ok(hr == E_UNEXPECTED, "GetPropertyBSTR returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPropertyDWORD(uri, Uri_PROPERTY_PORT, &dword, 0);
    ok(hr == E_UNEXPECTED, "GetPropertyDWORD returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetPropertyLength(uri, Uri_PROPERTY_RAW_URI, &dword, 0);
    ok(hr == E_UNEXPECTED, "GetPropertyLength returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetQuery(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetQuery returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetRawUri(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetRawUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetScheme(uri, &dword);
    ok(hr == E_UNEXPECTED, "GetScheme returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetSchemeName(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetSchemeName returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetUserInfo(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetUserInfo returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetUserName(uri, &bstr);
    ok(hr == E_UNEXPECTED, "GetUserName returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_GetZone(uri, &dword);
    ok(hr == E_UNEXPECTED, "GetZone returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUri_IsEqual(uri, uri, &eq);
    ok(hr == E_UNEXPECTED, "IsEqual returned %x, expected E_UNEXPECTED.\n", hr);

    hr = IUriBuilderFactory_CreateInitializedIUriBuilder(ubf, 0, 0, &ub);
    ok(hr == E_UNEXPECTED, "CreateInitializedIUriBuilder returned %x, expected E_UNEXPECTED.\n", hr);
    hr = IUriBuilderFactory_CreateIUriBuilder(ubf, 0, 0, &ub);
    ok(hr == S_OK, "CreateIUriBuilder returned %x, expected S_OK.\n", hr);
    IUriBuilder_Release(ub);

    hr = IPersistStream_GetSizeMax(ps, &ui);
    ok(hr == S_OK, "GetSizeMax returned %x, expected S_OK.\n", hr);
    ok(ui.u.LowPart == 34, "ui.LowPart = %d, expected 34.\n", ui.u.LowPart);
    hr = IPersistStream_IsDirty(ps);
    ok(hr == S_FALSE, "IsDirty returned %x, expected S_FALSE.\n", hr);

    IPersistStream_Release(ps);
    IUriBuilderFactory_Release(ubf);
    IUri_Release(uri);
}
