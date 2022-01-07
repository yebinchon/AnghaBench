
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int post_data_len; int * post_stream; int * headers; int * post_data; } ;
typedef TYPE_6__ request_data_t ;
typedef int nsWineURI ;
typedef int nsISupports ;
typedef int WCHAR ;
struct TYPE_17__ {TYPE_4__* inner_window; int IHTMLWindow2_iface; } ;
struct TYPE_19__ {TYPE_5__ base; TYPE_2__* doc_obj; } ;
struct TYPE_16__ {TYPE_3__* doc; } ;
struct TYPE_15__ {int basedoc; } ;
struct TYPE_13__ {TYPE_7__* window; } ;
struct TYPE_14__ {TYPE_1__ basedoc; int doc_object_service; scalar_t__ webbrowser; } ;
typedef int IUri ;
typedef TYPE_7__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int * BSTR ;
typedef scalar_t__ BOOL ;


 int BINDING_REFRESH ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int IDocObjectService_FireBeforeNavigate2 (int ,int *,int const*,int,int *,void*,int,int const*,int ,scalar_t__*) ;
 int IHTMLWindow2_get_name (int *,int **) ;
 int LOAD_FLAGS_NONE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SysFreeString (int *) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int create_doc_uri (TYPE_7__*,int *,int **) ;
 int debugstr_w (int const*) ;
 int hlink_frame_navigate (int *,int const*,int *,int ,scalar_t__*) ;
 int load_nsuri (TYPE_7__*,int *,int *,int *,int ) ;
 int nsISupports_Release (int *) ;
 int super_navigate (TYPE_7__*,int *,int,int const*,void*,int) ;

__attribute__((used)) static HRESULT navigate_uri(HTMLOuterWindow *window, IUri *uri, const WCHAR *display_uri, const request_data_t *request_data,
        DWORD flags)
{
    nsWineURI *nsuri;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(display_uri));

    if(window->doc_obj && window->doc_obj->webbrowser) {
        DWORD post_data_len = request_data ? request_data->post_data_len : 0;
        void *post_data = post_data_len ? request_data->post_data : ((void*)0);
        const WCHAR *headers = request_data ? request_data->headers : ((void*)0);

        if(!(flags & BINDING_REFRESH)) {
            BSTR frame_name = ((void*)0);
            BOOL cancel = FALSE;

            if(window != window->doc_obj->basedoc.window) {
                hres = IHTMLWindow2_get_name(&window->base.IHTMLWindow2_iface, &frame_name);
                if(FAILED(hres))
                    return hres;
            }

            hres = IDocObjectService_FireBeforeNavigate2(window->doc_obj->doc_object_service, ((void*)0), display_uri, 0x40,
                    frame_name, post_data, post_data_len ? post_data_len+1 : 0, headers, TRUE, &cancel);
            SysFreeString(frame_name);
            if(SUCCEEDED(hres) && cancel) {
                TRACE("Navigation canceled\n");
                return S_OK;
            }
        }

        if(window == window->doc_obj->basedoc.window)
            return super_navigate(window, uri, flags, headers, post_data, post_data_len);
    }

    if(window->doc_obj && window == window->doc_obj->basedoc.window) {
        BOOL cancel;

        hres = hlink_frame_navigate(&window->base.inner_window->doc->basedoc, display_uri, ((void*)0), 0, &cancel);
        if(FAILED(hres))
            return hres;

        if(cancel) {
            TRACE("Navigation handled by hlink frame\n");
            return S_OK;
        }
    }

    hres = create_doc_uri(window, uri, &nsuri);
    if(FAILED(hres))
        return hres;

    hres = load_nsuri(window, nsuri, request_data ? request_data->post_stream : ((void*)0), ((void*)0), LOAD_FLAGS_NONE);
    nsISupports_Release((nsISupports*)nsuri);
    return hres;
}
