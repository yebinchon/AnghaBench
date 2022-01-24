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
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  IUriContainer ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * E_OUTOFMEMORY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAsyncMoniker ; 
 int /*<<< orphan*/  IID_IInternet ; 
 int /*<<< orphan*/  IID_IMoniker ; 
 int /*<<< orphan*/  IID_IStream ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  IID_IUriContainer ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * MK_E_SYNTAX ; 
 int /*<<< orphan*/  QueryInterface_IServiceProvider ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * S_FALSE ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  bsc ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 scalar_t__ pCreateUri ; 

__attribute__((used)) static void FUNC13(void)
{
    IMoniker *mon, *async_mon;
    LPOLESTR display_name;
    IBindCtx *bctx;
    IUnknown *unk;
    HRESULT hres;

    hres = FUNC1(&IID_IInternet, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IMoniker, (void**)&mon);
    FUNC12(hres == S_OK, "Could not create IInternet instance: %08x\n", hres);
    if(FUNC3(hres))
        return;

    hres = FUNC7(mon, &IID_IAsyncMoniker, (void**)&async_mon);
    FUNC12(hres == S_OK, "Could not get IAsyncMoniker iface: %08x\n", hres);
    FUNC12(mon == async_mon, "mon != async_mon\n");
    FUNC8(async_mon);

    hres = FUNC6(mon, NULL, NULL, &display_name);
    FUNC12(hres == E_OUTOFMEMORY, "GetDisplayName failed: %08x, expected E_OUTOFMEMORY\n", hres);

    if(pCreateUri) {
      IUriContainer *uri_container;
      IUri *uri;

      hres = FUNC7(mon, &IID_IUriContainer, (void**)&uri_container);
      FUNC12(hres == S_OK, "Could not get IUriMoniker iface: %08x\n", hres);


      uri = (void*)0xdeadbeef;
      hres = FUNC9(uri_container, &uri);
      FUNC12(hres == S_FALSE, "GetIUri failed: %08x\n", hres);
      FUNC12(!uri, "uri = %p, expected NULL\n", uri);

      FUNC10(uri_container);
    }

    FUNC11(QueryInterface_IServiceProvider);
    hres = FUNC2(0, (IBindStatusCallback*)&bsc, NULL, &bctx);
    FUNC12(hres == S_OK, "CreateAsyncBindCtx failed: %08x\n\n", hres);
    FUNC0(QueryInterface_IServiceProvider);

    if(pCreateUri) { /* Skip these tests on old IEs */
        unk = (void*)0xdeadbeef;
        hres = FUNC5(mon, bctx, NULL, &IID_IStream, (void**)&unk);
        FUNC12(hres == MK_E_SYNTAX, "BindToStorage failed: %08x, expected MK_E_SYNTAX\n", hres);
        FUNC12(!unk, "unk = %p\n", unk);

        unk = (void*)0xdeadbeef;
        hres = FUNC4(mon, bctx, NULL, &IID_IUnknown, (void**)&unk);
        FUNC12(hres == MK_E_SYNTAX, "BindToStorage failed: %08x, expected MK_E_SYNTAX\n", hres);
        FUNC12(!unk, "unk = %p\n", unk);
    }

    FUNC8(mon);
}