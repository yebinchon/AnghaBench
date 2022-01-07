
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int binding; } ;
struct TYPE_10__ {TYPE_2__ bsc; TYPE_1__* nschannel; int is_doc_channel; } ;
typedef TYPE_3__ nsChannelBSC ;
typedef int ULONG ;
struct TYPE_8__ {int content_type; } ;
typedef int LPCWSTR ;
typedef int IWinInetHttpInfo ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSCallback ;





 int FAILED (int ) ;
 int FIXME (char*,int ) ;
 int HTTP_QUERY_FLAG_NUMBER ;
 int HTTP_QUERY_STATUS_CODE ;
 int HTTP_STATUS_OK ;
 int IBinding_QueryInterface (int ,int *,void**) ;
 int IID_IWinInetHttpInfo ;
 int IWinInetHttpInfo_QueryInfo (int *,int,int*,int*,int *,int *) ;
 int IWinInetHttpInfo_Release (int *) ;
 int S_OK ;
 int debugstr_w (int ) ;
 int handle_extern_mime_navigation (TYPE_3__*) ;
 int handle_navigation_error (TYPE_3__*,int) ;
 int handle_redirect (TYPE_3__*,int ) ;
 int heap_free (int ) ;
 int heap_strdupWtoA (int ) ;
 int is_supported_doc_mime (int ) ;
 TYPE_3__* nsChannelBSC_from_BSCallback (int *) ;

__attribute__((used)) static HRESULT nsChannelBSC_on_progress(BSCallback *bsc, ULONG status_code, LPCWSTR status_text)
{
    nsChannelBSC *This = nsChannelBSC_from_BSCallback(bsc);

    switch(status_code) {
    case 129:
        if(This->is_doc_channel && !is_supported_doc_mime(status_text)) {
            FIXME("External MIME: %s\n", debugstr_w(status_text));

            handle_extern_mime_navigation(This);

            This->nschannel = ((void*)0);
        }

        if(!This->nschannel)
            return S_OK;

        heap_free(This->nschannel->content_type);
        This->nschannel->content_type = heap_strdupWtoA(status_text);
        break;
    case 128:
        return handle_redirect(This, status_text);
    case 130: {
        IWinInetHttpInfo *http_info;
        DWORD status, size = sizeof(DWORD);
        HRESULT hres;

        if(!This->bsc.binding)
            break;

        hres = IBinding_QueryInterface(This->bsc.binding, &IID_IWinInetHttpInfo, (void**)&http_info);
        if(FAILED(hres))
            break;

        hres = IWinInetHttpInfo_QueryInfo(http_info,
                HTTP_QUERY_STATUS_CODE|HTTP_QUERY_FLAG_NUMBER, &status, &size, ((void*)0), ((void*)0));
        IWinInetHttpInfo_Release(http_info);
        if(FAILED(hres) || status == HTTP_STATUS_OK)
            break;

        handle_navigation_error(This, status);
    }
    }

    return S_OK;
}
