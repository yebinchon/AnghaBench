
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uri; } ;
typedef TYPE_1__ nsWineURI ;
typedef int WCHAR ;
struct TYPE_7__ {int hostui; } ;
typedef int OLECHAR ;
typedef TYPE_2__ HTMLDocumentObj ;
typedef scalar_t__ HRESULT ;
typedef int BOOL ;


 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int FIXME (char*,int ,int ) ;
 scalar_t__ IDocHostUIHandler_TranslateUrl (int ,int ,int *,int **) ;
 scalar_t__ IUri_GetDisplayUri (int ,int **) ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int TRUE ;
 int debugstr_w (int *) ;
 int ensure_uri (TYPE_1__*) ;
 scalar_t__ strcmpW (int *,int *) ;

__attribute__((used)) static BOOL translate_url(HTMLDocumentObj *doc, nsWineURI *uri)
{
    OLECHAR *new_url = ((void*)0);
    WCHAR *url;
    BOOL ret = FALSE;
    HRESULT hres;

    if(!doc->hostui || !ensure_uri(uri))
        return FALSE;

    hres = IUri_GetDisplayUri(uri->uri, &url);
    if(FAILED(hres))
        return FALSE;

    hres = IDocHostUIHandler_TranslateUrl(doc->hostui, 0, url, &new_url);
    if(hres == S_OK && new_url) {
        if(strcmpW(url, new_url)) {
            FIXME("TranslateUrl returned new URL %s -> %s\n", debugstr_w(url), debugstr_w(new_url));
            ret = TRUE;
        }
        CoTaskMemFree(new_url);
    }

    SysFreeString(url);
    return ret;
}
