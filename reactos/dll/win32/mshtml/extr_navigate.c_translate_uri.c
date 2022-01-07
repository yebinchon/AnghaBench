
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* doc_obj; } ;
struct TYPE_4__ {scalar_t__ hostui; } ;
typedef int OLECHAR ;
typedef int IUri ;
typedef TYPE_2__ HTMLOuterWindow ;
typedef int HRESULT ;
typedef int * BSTR ;


 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int IDocHostUIHandler_TranslateUrl (scalar_t__,int ,int *,int **) ;
 int IUri_AddRef (int *) ;
 int IUri_GetDisplayUri (int *,int **) ;
 int IUri_Release (int *) ;
 int S_OK ;
 int SysFreeString (int *) ;
 int TRACE (char*,int ,int ,int ) ;
 int create_uri (int *,int ,int **) ;
 int debugstr_w (int *) ;

__attribute__((used)) static HRESULT translate_uri(HTMLOuterWindow *window, IUri *orig_uri, BSTR *ret_display_uri, IUri **ret_uri)
{
    IUri *uri = ((void*)0);
    BSTR display_uri;
    HRESULT hres;

    hres = IUri_GetDisplayUri(orig_uri, &display_uri);
    if(FAILED(hres))
        return hres;

    if(window->doc_obj && window->doc_obj->hostui) {
        OLECHAR *translated_url = ((void*)0);

        hres = IDocHostUIHandler_TranslateUrl(window->doc_obj->hostui, 0, display_uri,
                &translated_url);
        if(hres == S_OK && translated_url) {
            TRACE("%08x %s -> %s\n", hres, debugstr_w(display_uri), debugstr_w(translated_url));
            SysFreeString(display_uri);
            hres = create_uri(translated_url, 0, &uri);
            CoTaskMemFree(translated_url);
            if(FAILED(hres))
                return hres;

            hres = IUri_GetDisplayUri(uri, &display_uri);
            if(FAILED(hres)) {
                IUri_Release(uri);
                return hres;
            }
        }
    }

    if(!uri) {
        IUri_AddRef(orig_uri);
        uri = orig_uri;
    }

    *ret_display_uri = display_uri;
    *ret_uri = uri;
    return S_OK;
}
