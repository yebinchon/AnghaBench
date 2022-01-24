#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  IBindStatusCallback_iface; int /*<<< orphan*/  request_data; } ;
struct TYPE_11__ {TYPE_2__ bsc; } ;
typedef  TYPE_3__ nsChannelBSC ;
struct TYPE_12__ {int /*<<< orphan*/  request_headers; int /*<<< orphan*/  post_data_contains_headers; int /*<<< orphan*/  post_data_stream; } ;
typedef  TYPE_4__ nsChannel ;
typedef  char WCHAR ;
struct TYPE_13__ {TYPE_1__* doc_obj; } ;
struct TYPE_9__ {scalar_t__ client; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHlinkFrame ;
typedef  int /*<<< orphan*/  IHlink ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  TYPE_5__ HTMLDocument ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_StdHlink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FALSE ; 
 int /*<<< orphan*/  HLINKSETF_TARGET ; 
 int HLNF_OPENINNEWWINDOW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  IID_IHlink ; 
 int /*<<< orphan*/  IID_IHlinkFrame ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_3__**) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC15(HTMLDocument *doc, LPCWSTR url, nsChannel *nschannel, DWORD hlnf, BOOL *cancel)
{
    IHlinkFrame *hlink_frame;
    nsChannelBSC *callback;
    IBindCtx *bindctx;
    IMoniker *mon;
    IHlink *hlink;
    HRESULT hres;

    *cancel = FALSE;

    hres = FUNC13((IUnknown*)doc->doc_obj->client, &IID_IHlinkFrame, &IID_IHlinkFrame,
            (void**)&hlink_frame);
    if(FUNC3(hres))
        return S_OK;

    hres = FUNC12(NULL, NULL, NULL, 0, FALSE, &callback);
    if(FUNC3(hres)) {
        FUNC7(hlink_frame);
        return hres;
    }

    if(nschannel)
        FUNC14(nschannel->post_data_stream, nschannel->post_data_contains_headers,
                &nschannel->request_headers, &callback->bsc.request_data);

    hres = FUNC1(0, &callback->bsc.IBindStatusCallback_iface, NULL, &bindctx);
    if(FUNC11(hres))
       hres = FUNC0(&CLSID_StdHlink, NULL, CLSCTX_INPROC_SERVER,
                &IID_IHlink, (LPVOID*)&hlink);

    if(FUNC11(hres))
        hres = FUNC2(NULL, url, &mon);

    if(FUNC11(hres)) {
        FUNC8(hlink, HLINKSETF_TARGET, mon, NULL);

        if(hlnf & HLNF_OPENINNEWWINDOW) {
            static const WCHAR wszBlank[] = {'_','b','l','a','n','k',0};
            FUNC9(hlink, wszBlank); /* FIXME */
        }

        hres = FUNC6(hlink_frame, hlnf, bindctx,
                &callback->bsc.IBindStatusCallback_iface, hlink);
        FUNC10(mon);
        *cancel = hres == S_OK;
        hres = S_OK;
    }

    FUNC7(hlink_frame);
    FUNC4(bindctx);
    FUNC5(&callback->bsc.IBindStatusCallback_iface);
    return hres;
}