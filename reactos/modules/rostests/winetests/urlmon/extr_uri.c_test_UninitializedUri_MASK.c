#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int LowPart; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  IUriBuilderFactory ;
typedef  int /*<<< orphan*/  IUriBuilder ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CUri ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int E_UNEXPECTED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  IID_IUri ; 
 int /*<<< orphan*/  IID_IUriBuilderFactory ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  Uri_PROPERTY_PORT ; 
 int /*<<< orphan*/  Uri_PROPERTY_RAW_URI ; 
 int /*<<< orphan*/  FUNC34 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 

__attribute__((used)) static void FUNC36(void)
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

    hr = FUNC0(&CLSID_CUri, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUri, (void**)&uri);
    if(FUNC1(hr)) {
        FUNC35("Skipping uninitialized Uri tests.\n");
        return;
    }

    hr = FUNC32(uri, &IID_IUriBuilderFactory, (void**)&ubf);
    FUNC34(hr == S_OK, "QueryInterface(IID_IUriBuillderFactory) failed: %x.\n", hr);
    hr = FUNC32(uri, &IID_IPersistStream, (void**)&ps);
    FUNC34(hr == S_OK, "QueryInterface(IID_IPersistStream) failed: %x.\n", hr);

    hr = FUNC9(uri, NULL);
    FUNC34(hr == E_UNEXPECTED, "GetAbsoluteUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC9(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetAbsoluteUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC10(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetAuthority returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC11(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetDisplayUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC12(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetDomain returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC13(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetExtension returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC14(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetFragment returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC15(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetHost returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC16(uri, &dword);
    FUNC34(hr == E_UNEXPECTED, "GetHostType returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC17(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetPassword returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC17(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetPassword returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC18(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetPathAndQuery returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC19(uri, &dword);
    FUNC34(hr == E_UNEXPECTED, "GetPort returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC20(uri, &dword);
    FUNC34(hr == E_UNEXPECTED, "GetProperties returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC21(uri, Uri_PROPERTY_RAW_URI, &bstr, 0);
    FUNC34(hr == E_UNEXPECTED, "GetPropertyBSTR returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC22(uri, Uri_PROPERTY_PORT, &dword, 0);
    FUNC34(hr == E_UNEXPECTED, "GetPropertyDWORD returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC23(uri, Uri_PROPERTY_RAW_URI, &dword, 0);
    FUNC34(hr == E_UNEXPECTED, "GetPropertyLength returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC24(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetQuery returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC25(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetRawUri returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC26(uri, &dword);
    FUNC34(hr == E_UNEXPECTED, "GetScheme returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC27(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetSchemeName returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC28(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetUserInfo returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC29(uri, &bstr);
    FUNC34(hr == E_UNEXPECTED, "GetUserName returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC30(uri, &dword);
    FUNC34(hr == E_UNEXPECTED, "GetZone returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC31(uri, uri, &eq);
    FUNC34(hr == E_UNEXPECTED, "IsEqual returned %x, expected E_UNEXPECTED.\n", hr);

    hr = FUNC6(ubf, 0, 0, &ub);
    FUNC34(hr == E_UNEXPECTED, "CreateInitializedIUriBuilder returned %x, expected E_UNEXPECTED.\n", hr);
    hr = FUNC5(ubf, 0, 0, &ub);
    FUNC34(hr == S_OK, "CreateIUriBuilder returned %x, expected S_OK.\n", hr);
    FUNC8(ub);

    hr = FUNC2(ps, &ui);
    FUNC34(hr == S_OK, "GetSizeMax returned %x, expected S_OK.\n", hr);
    FUNC34(ui.u.LowPart == 34, "ui.LowPart = %d, expected 34.\n", ui.u.LowPart);
    hr = FUNC3(ps);
    FUNC34(hr == S_FALSE, "IsDirty returned %x, expected S_FALSE.\n", hr);

    FUNC4(ps);
    FUNC7(ubf);
    FUNC33(uri);
}