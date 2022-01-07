
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const WCHAR ;
struct TYPE_4__ {scalar_t__ (* filter ) (int const*,int) ;int const* mime; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int const* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (int const*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,int ,int ) ;
 int const* app_octetstreamW ;
 int debugstr_an (char const*,int ) ;
 int debugstr_w (int const*) ;
 int find_mime_from_url (int const*,int const**) ;
 int is_known_mime_type (int const*) ;
 int is_text_plain_char (int const) ;
 int memcpy (int const*,int const*,int) ;
 TYPE_1__* mime_filters ;
 TYPE_1__* mime_filters_any_pos ;
 int min (int,int) ;
 int strcmpW (int const*,int const*) ;
 int strlenW (int const*) ;
 scalar_t__ stub1 (int const*,int) ;
 scalar_t__ stub2 (int const*,int) ;
 scalar_t__ stub3 (int const*,int) ;
 scalar_t__ stub4 (int const*,int) ;
 scalar_t__ stub5 (int const*,int) ;
 int const* text_plainW ;

__attribute__((used)) static HRESULT find_mime_from_buffer(const BYTE *buf, DWORD size, const WCHAR *proposed_mime, const WCHAR *url, WCHAR **ret_mime)
{
    int len, i, any_pos_mime = -1;
    const WCHAR *ret = ((void*)0);

    if(!buf || !size) {
        if(!proposed_mime)
            return E_FAIL;

        len = strlenW(proposed_mime)+1;
        *ret_mime = CoTaskMemAlloc(len*sizeof(WCHAR));
        if(!*ret_mime)
            return E_OUTOFMEMORY;

        memcpy(*ret_mime, proposed_mime, len*sizeof(WCHAR));
        return S_OK;
    }

    if(proposed_mime && (!strcmpW(proposed_mime, app_octetstreamW)
                || !strcmpW(proposed_mime, text_plainW)))
        proposed_mime = ((void*)0);

    if(proposed_mime) {
        ret = proposed_mime;

        for(i=0; i < ARRAY_SIZE(mime_filters_any_pos); i++) {
            if(!strcmpW(proposed_mime, mime_filters_any_pos[i].mime)) {
                any_pos_mime = i;
                for(len=size; len>0; len--) {
                    if(mime_filters_any_pos[i].filter(buf+size-len, len))
                        break;
                }
                if(!len)
                    ret = ((void*)0);
                break;
            }
        }

        if(i == ARRAY_SIZE(mime_filters_any_pos)) {
            for(i=0; i < ARRAY_SIZE(mime_filters); i++) {
                if(!strcmpW(proposed_mime, mime_filters[i].mime)) {
                    if(!mime_filters[i].filter(buf, size))
                        ret = ((void*)0);
                    break;
                }
            }
        }
    }



    if(!proposed_mime || any_pos_mime!=-1) {
        for(len=size; !ret && len>0; len--) {
            for(i=0; i<ARRAY_SIZE(mime_filters_any_pos); i++) {
                if(mime_filters_any_pos[i].filter(buf+size-len, len)) {
                    ret = mime_filters_any_pos[i].mime;
                    break;
                }
            }
        }
    }

    i=0;
    while(!ret) {
        if(mime_filters[i].filter(buf, size))
            ret = mime_filters[i].mime;
        i++;
    }

    if(any_pos_mime!=-1 && ret==text_plainW)
        ret = mime_filters_any_pos[any_pos_mime].mime;
    else if(proposed_mime && ret==app_octetstreamW) {
        for(len=size; ret==app_octetstreamW && len>0; len--) {
            if(!is_text_plain_char(buf[size-len]))
                break;
            for(i=0; i<ARRAY_SIZE(mime_filters_any_pos); i++) {
                if(mime_filters_any_pos[i].filter(buf+size-len, len)) {
                    ret = text_plainW;
                    break;
                }
            }
        }

        if(ret == app_octetstreamW)
            ret = proposed_mime;
    }

    if(url && (ret == app_octetstreamW || ret == text_plainW)) {
        WCHAR *url_mime;
        HRESULT hres;

        hres = find_mime_from_url(url, &url_mime);
        if(SUCCEEDED(hres)) {
            if(!is_known_mime_type(url_mime)) {
                *ret_mime = url_mime;
                return hres;
            }
            CoTaskMemFree(url_mime);
        }
    }

    TRACE("found %s for %s\n", debugstr_w(ret), debugstr_an((const char*)buf, min(32, size)));

    len = strlenW(ret)+1;
    *ret_mime = CoTaskMemAlloc(len*sizeof(WCHAR));
    if(!*ret_mime)
        return E_OUTOFMEMORY;

    memcpy(*ret_mime, ret, len*sizeof(WCHAR));
    return S_OK;
}
