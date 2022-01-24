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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PropertyNotifySink ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  doc_complete ; 
 int /*<<< orphan*/ * notif_doc ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IHTMLDocument2 *FUNC13(const char *start_url)
{
    BSTR url;
    IBindCtx *bc;
    IMoniker *url_mon;
    IPersistMoniker *persist_mon;
    IHTMLDocument2 *doc;
    HRESULT hres;

    hres = FUNC1(0, &bc);
    FUNC11(hres == S_OK, "CreateBindCtx failed: 0x%08x\n", hres);

    url = FUNC9(start_url);
    hres = FUNC2(NULL, url, &url_mon);
    FUNC11(hres == S_OK, "CreateURLMoniker failed: 0x%08x\n", hres);

    hres = FUNC0(&CLSID_HTMLDocument, NULL,
            CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER, &IID_IHTMLDocument2,
            (void**)&doc);
    FUNC11(hres == S_OK, "CoCreateInstance failed: 0x%08x\n", hres);

    hres = FUNC4(doc, &IID_IPersistMoniker,
            (void**)&persist_mon);
    FUNC11(hres == S_OK, "IHTMLDocument2_QueryInterface failed: 0x%08x\n", hres);

    hres = FUNC6(persist_mon, FALSE, url_mon, bc,
            STGM_SHARE_EXCLUSIVE | STGM_READWRITE);
    FUNC11(hres == S_OK, "IPersistMoniker_Load failed: 0x%08x\n", hres);

    FUNC7(persist_mon);
    FUNC5(url_mon);
    FUNC3(bc);
    FUNC8(url);

    doc_complete = FALSE;
    notif_doc = doc;
    FUNC10((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);
    FUNC12(&doc_complete);

    return doc;
}