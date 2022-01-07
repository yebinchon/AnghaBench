
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int IBindStatusCallback_iface; int request_data; } ;
struct TYPE_11__ {TYPE_2__ bsc; } ;
typedef TYPE_3__ nsChannelBSC ;
struct TYPE_12__ {int request_headers; int post_data_contains_headers; int post_data_stream; } ;
typedef TYPE_4__ nsChannel ;
typedef char WCHAR ;
struct TYPE_13__ {TYPE_1__* doc_obj; } ;
struct TYPE_9__ {scalar_t__ client; } ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IHlinkFrame ;
typedef int IHlink ;
typedef int IBindCtx ;
typedef TYPE_5__ HTMLDocument ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_StdHlink ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,int *) ;
 scalar_t__ CreateAsyncBindCtx (int ,int *,int *,int **) ;
 scalar_t__ CreateURLMoniker (int *,int ,int **) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int HLINKSETF_TARGET ;
 int HLNF_OPENINNEWWINDOW ;
 int IBindCtx_Release (int *) ;
 int IBindStatusCallback_Release (int *) ;
 scalar_t__ IHlinkFrame_Navigate (int *,int,int *,int *,int *) ;
 int IHlinkFrame_Release (int *) ;
 int IHlink_SetMonikerReference (int *,int ,int *,int *) ;
 int IHlink_SetTargetFrameName (int *,char const*) ;
 int IID_IHlink ;
 int IID_IHlinkFrame ;
 int IMoniker_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ create_channelbsc (int *,int *,int *,int ,int,TYPE_3__**) ;
 scalar_t__ do_query_service (int *,int *,int *,void**) ;
 int read_post_data_stream (int ,int ,int *,int *) ;

HRESULT hlink_frame_navigate(HTMLDocument *doc, LPCWSTR url, nsChannel *nschannel, DWORD hlnf, BOOL *cancel)
{
    IHlinkFrame *hlink_frame;
    nsChannelBSC *callback;
    IBindCtx *bindctx;
    IMoniker *mon;
    IHlink *hlink;
    HRESULT hres;

    *cancel = FALSE;

    hres = do_query_service((IUnknown*)doc->doc_obj->client, &IID_IHlinkFrame, &IID_IHlinkFrame,
            (void**)&hlink_frame);
    if(FAILED(hres))
        return S_OK;

    hres = create_channelbsc(((void*)0), ((void*)0), ((void*)0), 0, FALSE, &callback);
    if(FAILED(hres)) {
        IHlinkFrame_Release(hlink_frame);
        return hres;
    }

    if(nschannel)
        read_post_data_stream(nschannel->post_data_stream, nschannel->post_data_contains_headers,
                &nschannel->request_headers, &callback->bsc.request_data);

    hres = CreateAsyncBindCtx(0, &callback->bsc.IBindStatusCallback_iface, ((void*)0), &bindctx);
    if(SUCCEEDED(hres))
       hres = CoCreateInstance(&CLSID_StdHlink, ((void*)0), CLSCTX_INPROC_SERVER,
                &IID_IHlink, (LPVOID*)&hlink);

    if(SUCCEEDED(hres))
        hres = CreateURLMoniker(((void*)0), url, &mon);

    if(SUCCEEDED(hres)) {
        IHlink_SetMonikerReference(hlink, HLINKSETF_TARGET, mon, ((void*)0));

        if(hlnf & HLNF_OPENINNEWWINDOW) {
            static const WCHAR wszBlank[] = {'_','b','l','a','n','k',0};
            IHlink_SetTargetFrameName(hlink, wszBlank);
        }

        hres = IHlinkFrame_Navigate(hlink_frame, hlnf, bindctx,
                &callback->bsc.IBindStatusCallback_iface, hlink);
        IMoniker_Release(mon);
        *cancel = hres == S_OK;
        hres = S_OK;
    }

    IHlinkFrame_Release(hlink_frame);
    IBindCtx_Release(bindctx);
    IBindStatusCallback_Release(&callback->bsc.IBindStatusCallback_iface);
    return hres;
}
