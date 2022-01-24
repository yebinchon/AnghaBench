#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  post_data_len; int /*<<< orphan*/ * post_data; int /*<<< orphan*/ * headers; } ;
typedef  TYPE_2__ request_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_8__ {TYPE_1__ bsc; } ;
typedef  TYPE_3__ nsChannelBSC ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IWebBrowser2 ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITargetFramePriv2 ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_LOCAL_SERVER ; 
 int /*<<< orphan*/  CLSID_InternetExplorer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int HLNF_DISABLEWINDOWRESTRICTIONS ; 
 int HLNF_OPENINNEWWINDOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLWindow2 ; 
 int /*<<< orphan*/  IID_ITargetFramePriv2 ; 
 int /*<<< orphan*/  IID_IWebBrowser2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SID_SHTMLWindow ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  emptyW ; 

HRESULT FUNC16(HTMLOuterWindow *window, IUri *uri, const WCHAR *name, request_data_t *request_data, IHTMLWindow2 **ret)
{
    IWebBrowser2 *web_browser;
    IHTMLWindow2 *new_window;
    IBindCtx *bind_ctx;
    nsChannelBSC *bsc;
    HRESULT hres;

    if(request_data)
        hres = FUNC14(NULL, request_data->headers,
                request_data->post_data, request_data->post_data_len, FALSE,
                &bsc);
    else
        hres = FUNC14(NULL, NULL, NULL, 0, FALSE, &bsc);
    if(FUNC2(hres))
        return hres;

    hres = FUNC1(0, &bsc->bsc.IBindStatusCallback_iface, NULL, &bind_ctx);
    if(FUNC2(hres)) {
        FUNC4(&bsc->bsc.IBindStatusCallback_iface);
        return hres;
    }

    hres = FUNC0(&CLSID_InternetExplorer, NULL, CLSCTX_LOCAL_SERVER,
            &IID_IWebBrowser2, (void**)&web_browser);
    if(FUNC12(hres)) {
        ITargetFramePriv2 *target_frame_priv;

        hres = FUNC8(web_browser, &IID_ITargetFramePriv2, (void**)&target_frame_priv);
        if(FUNC12(hres)) {
            hres = FUNC6(target_frame_priv,
                    HLNF_DISABLEWINDOWRESTRICTIONS|HLNF_OPENINNEWWINDOW, bind_ctx, &bsc->bsc.IBindStatusCallback_iface,
                    name, uri, emptyW);
            FUNC7(target_frame_priv);

            if(FUNC12(hres))
                hres = FUNC15((IUnknown*)web_browser, &SID_SHTMLWindow, &IID_IHTMLWindow2, (void**)&new_window);
        }
        if(FUNC2(hres)) {
            FUNC9(web_browser);
            FUNC10(web_browser);
        }
    }else {
        FUNC13("Could not create InternetExplorer instance: %08x\n", hres);
    }

    FUNC4(&bsc->bsc.IBindStatusCallback_iface);
    FUNC3(bind_ctx);
    if(FUNC2(hres))
        return hres;

    FUNC11(web_browser, VARIANT_TRUE);
    FUNC10(web_browser);

    if(ret)
        *ret = new_window;
    else
        FUNC5(new_window);
    return S_OK;
}