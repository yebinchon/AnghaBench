
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int post_data_len; int * post_data; int * headers; } ;
typedef TYPE_2__ request_data_t ;
struct TYPE_6__ {int IBindStatusCallback_iface; } ;
struct TYPE_8__ {TYPE_1__ bsc; } ;
typedef TYPE_3__ nsChannelBSC ;
typedef int WCHAR ;
typedef int IWebBrowser2 ;
typedef int IUri ;
typedef int IUnknown ;
typedef int ITargetFramePriv2 ;
typedef int IHTMLWindow2 ;
typedef int IBindCtx ;
typedef int HTMLOuterWindow ;
typedef int HRESULT ;


 int CLSCTX_LOCAL_SERVER ;
 int CLSID_InternetExplorer ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CreateAsyncBindCtx (int ,int *,int *,int **) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int HLNF_DISABLEWINDOWRESTRICTIONS ;
 int HLNF_OPENINNEWWINDOW ;
 int IBindCtx_Release (int *) ;
 int IBindStatusCallback_Release (int *) ;
 int IHTMLWindow2_Release (int *) ;
 int IID_IHTMLWindow2 ;
 int IID_ITargetFramePriv2 ;
 int IID_IWebBrowser2 ;
 int ITargetFramePriv2_AggregatedNavigation2 (int *,int,int *,int *,int const*,int *,int ) ;
 int ITargetFramePriv2_Release (int *) ;
 int IWebBrowser2_QueryInterface (int *,int *,void**) ;
 int IWebBrowser2_Quit (int *) ;
 int IWebBrowser2_Release (int *) ;
 int IWebBrowser2_put_Visible (int *,int ) ;
 int SID_SHTMLWindow ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int VARIANT_TRUE ;
 int WARN (char*,int ) ;
 int create_channelbsc (int *,int *,int *,int ,int ,TYPE_3__**) ;
 int do_query_service (int *,int *,int *,void**) ;
 int emptyW ;

HRESULT navigate_new_window(HTMLOuterWindow *window, IUri *uri, const WCHAR *name, request_data_t *request_data, IHTMLWindow2 **ret)
{
    IWebBrowser2 *web_browser;
    IHTMLWindow2 *new_window;
    IBindCtx *bind_ctx;
    nsChannelBSC *bsc;
    HRESULT hres;

    if(request_data)
        hres = create_channelbsc(((void*)0), request_data->headers,
                request_data->post_data, request_data->post_data_len, FALSE,
                &bsc);
    else
        hres = create_channelbsc(((void*)0), ((void*)0), ((void*)0), 0, FALSE, &bsc);
    if(FAILED(hres))
        return hres;

    hres = CreateAsyncBindCtx(0, &bsc->bsc.IBindStatusCallback_iface, ((void*)0), &bind_ctx);
    if(FAILED(hres)) {
        IBindStatusCallback_Release(&bsc->bsc.IBindStatusCallback_iface);
        return hres;
    }

    hres = CoCreateInstance(&CLSID_InternetExplorer, ((void*)0), CLSCTX_LOCAL_SERVER,
            &IID_IWebBrowser2, (void**)&web_browser);
    if(SUCCEEDED(hres)) {
        ITargetFramePriv2 *target_frame_priv;

        hres = IWebBrowser2_QueryInterface(web_browser, &IID_ITargetFramePriv2, (void**)&target_frame_priv);
        if(SUCCEEDED(hres)) {
            hres = ITargetFramePriv2_AggregatedNavigation2(target_frame_priv,
                    HLNF_DISABLEWINDOWRESTRICTIONS|HLNF_OPENINNEWWINDOW, bind_ctx, &bsc->bsc.IBindStatusCallback_iface,
                    name, uri, emptyW);
            ITargetFramePriv2_Release(target_frame_priv);

            if(SUCCEEDED(hres))
                hres = do_query_service((IUnknown*)web_browser, &SID_SHTMLWindow, &IID_IHTMLWindow2, (void**)&new_window);
        }
        if(FAILED(hres)) {
            IWebBrowser2_Quit(web_browser);
            IWebBrowser2_Release(web_browser);
        }
    }else {
        WARN("Could not create InternetExplorer instance: %08x\n", hres);
    }

    IBindStatusCallback_Release(&bsc->bsc.IBindStatusCallback_iface);
    IBindCtx_Release(bind_ctx);
    if(FAILED(hres))
        return hres;

    IWebBrowser2_put_Visible(web_browser, VARIANT_TRUE);
    IWebBrowser2_Release(web_browser);

    if(ret)
        *ret = new_window;
    else
        IHTMLWindow2_Release(new_window);
    return S_OK;
}
