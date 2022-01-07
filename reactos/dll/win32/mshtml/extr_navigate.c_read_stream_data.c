
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIRequest ;
struct TYPE_10__ {int readed; int bom; scalar_t__ binding; } ;
struct TYPE_9__ {TYPE_7__* nsstream; TYPE_4__ bsc; int nscontext; TYPE_1__* nschannel; int nslistener; scalar_t__ is_doc_channel; scalar_t__ response_processed; } ;
typedef TYPE_2__ nsChannelBSC ;
typedef int buf ;
typedef int WCHAR ;
struct TYPE_11__ {int buf_size; int nsIInputStream_iface; int * buf; } ;
struct TYPE_8__ {int nsIHttpChannel_iface; int content_type; void* charset; } ;
typedef int IWinInetHttpInfo ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;





 int CoTaskMemFree (int *) ;
 int ERR (char*,...) ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ FindMimeFromData (int *,int *,int *,int,int *,int ,int **,int ) ;
 scalar_t__ IBinding_QueryInterface (scalar_t__,int *,void**) ;
 int IID_IWinInetHttpInfo ;
 int IWinInetHttpInfo_Release (int *) ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ) ;
 scalar_t__ TRUE ;
 int UTF16_STR ;
 int UTF8_STR ;
 TYPE_7__* create_nsprotocol_stream () ;
 int debugstr_w (int *) ;
 void* heap_strdupA (int ) ;
 int heap_strdupWtoA (int *) ;
 int nsIStreamListener_OnDataAvailable (int ,int *,int ,int *,int,int) ;
 scalar_t__ on_start_nsrequest (TYPE_2__*) ;
 int query_http_info (TYPE_2__*,int *) ;
 scalar_t__ read_stream (TYPE_4__*,int *,int *,int,int *) ;
 int * text_htmlW ;

__attribute__((used)) static HRESULT read_stream_data(nsChannelBSC *This, IStream *stream)
{
    DWORD read;
    nsresult nsres;
    HRESULT hres;

    if(!This->response_processed) {
        IWinInetHttpInfo *wininet_info;

        This->response_processed = TRUE;
        if(This->bsc.binding) {
            hres = IBinding_QueryInterface(This->bsc.binding, &IID_IWinInetHttpInfo, (void**)&wininet_info);
            if(SUCCEEDED(hres)) {
                query_http_info(This, wininet_info);
                IWinInetHttpInfo_Release(wininet_info);
            }
        }
    }

    if(!This->nschannel)
        return S_OK;

    if(!This->nslistener) {
        BYTE buf[1024];

        do {
            hres = read_stream(&This->bsc, stream, buf, sizeof(buf), &read);
        }while(hres == S_OK && read);

        return S_OK;
    }

    if(!This->nsstream) {
        This->nsstream = create_nsprotocol_stream();
        if(!This->nsstream)
            return E_OUTOFMEMORY;
    }

    do {
        BOOL first_read = !This->bsc.readed;

        hres = read_stream(&This->bsc, stream, This->nsstream->buf+This->nsstream->buf_size,
                sizeof(This->nsstream->buf)-This->nsstream->buf_size, &read);
        if(!read)
            break;

        This->nsstream->buf_size += read;

        if(first_read) {
            switch(This->bsc.bom) {
            case 128:
                This->nschannel->charset = heap_strdupA(UTF8_STR);
                break;
            case 129:
                This->nschannel->charset = heap_strdupA(UTF16_STR);
            case 130:
                                                          ;
            }

            if(!This->nschannel->content_type) {
                WCHAR *mime;

                hres = FindMimeFromData(((void*)0), ((void*)0), This->nsstream->buf, This->nsstream->buf_size,
                        This->is_doc_channel ? text_htmlW : ((void*)0), 0, &mime, 0);
                if(FAILED(hres))
                    return hres;

                TRACE("Found MIME %s\n", debugstr_w(mime));

                This->nschannel->content_type = heap_strdupWtoA(mime);
                CoTaskMemFree(mime);
                if(!This->nschannel->content_type)
                    return E_OUTOFMEMORY;
            }

            hres = on_start_nsrequest(This);
            if(FAILED(hres))
                return hres;
        }

        nsres = nsIStreamListener_OnDataAvailable(This->nslistener,
                (nsIRequest*)&This->nschannel->nsIHttpChannel_iface, This->nscontext,
                &This->nsstream->nsIInputStream_iface, This->bsc.readed-This->nsstream->buf_size,
                This->nsstream->buf_size);
        if(NS_FAILED(nsres))
            ERR("OnDataAvailable failed: %08x\n", nsres);

        if(This->nsstream->buf_size == sizeof(This->nsstream->buf)) {
            ERR("buffer is full\n");
            break;
        }
    }while(hres == S_OK);

    return S_OK;
}
