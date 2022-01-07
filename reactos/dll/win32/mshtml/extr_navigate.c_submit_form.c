
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * member_0; } ;
typedef TYPE_1__ request_data_t ;
typedef int nsIInputStream ;
typedef int WCHAR ;
struct TYPE_12__ {int readystate_locked; } ;
typedef int IUri ;
typedef TYPE_2__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef int BSTR ;


 int BINDING_NAVIGATED ;
 int BINDING_SUBMIT ;
 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SysFreeString (int ) ;
 int TRUE ;
 int navigate_new_window (TYPE_2__*,int *,int const*,TYPE_1__*,int *) ;
 int navigate_uri (TYPE_2__*,int *,int ,TYPE_1__*,int) ;
 int read_post_data_stream (int *,int ,int *,TYPE_1__*) ;
 int release_request_data (TYPE_1__*) ;
 int translate_uri (TYPE_2__*,int *,int *,int **) ;

HRESULT submit_form(HTMLOuterWindow *window, const WCHAR *target, IUri *submit_uri, nsIInputStream *post_stream)
{
    request_data_t request_data = {((void*)0)};
    HRESULT hres;

    hres = read_post_data_stream(post_stream, TRUE, ((void*)0), &request_data);
    if(FAILED(hres))
        return hres;

    if(window) {
        IUri *uri;
        BSTR display_uri;

        window->readystate_locked++;

        hres = translate_uri(window, submit_uri, &display_uri, &uri);
        if(SUCCEEDED(hres)) {
            hres = navigate_uri(window, uri, display_uri, &request_data, BINDING_NAVIGATED|BINDING_SUBMIT);
            IUri_Release(uri);
            SysFreeString(display_uri);
        }

        window->readystate_locked--;
    }else
        hres = navigate_new_window(window, submit_uri, target, &request_data, ((void*)0));

    release_request_data(&request_data);
    return hres;
}
