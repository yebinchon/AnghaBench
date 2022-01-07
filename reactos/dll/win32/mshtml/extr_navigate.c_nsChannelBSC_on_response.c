
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* nschannel; int response_processed; } ;
typedef TYPE_2__ nsChannelBSC ;
typedef char WCHAR ;
struct TYPE_5__ {char* response_status_text; int response_status; } ;
typedef scalar_t__ LPCWSTR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSCallback ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRUE ;
 int WARN (char*,int ) ;
 int heap_free (char*) ;
 TYPE_2__* nsChannelBSC_from_BSCallback (int *) ;
 int process_response_headers (TYPE_2__*,char const*) ;
 int process_response_status_text (scalar_t__,char const*,char**) ;
 char* strchrW (scalar_t__,char) ;

__attribute__((used)) static HRESULT nsChannelBSC_on_response(BSCallback *bsc, DWORD response_code,
        LPCWSTR response_headers)
{
    nsChannelBSC *This = nsChannelBSC_from_BSCallback(bsc);
    char *str;
    HRESULT hres;

    This->response_processed = TRUE;
    This->nschannel->response_status = response_code;

    if(response_headers) {
        const WCHAR *headers;

        headers = strchrW(response_headers, '\r');
        hres = process_response_status_text(response_headers, headers, &str);
        if(FAILED(hres)) {
            WARN("parsing headers failed: %08x\n", hres);
            return hres;
        }

        heap_free(This->nschannel->response_status_text);
        This->nschannel->response_status_text = str;

        if(headers && headers[1] == '\n') {
            headers += 2;
            hres = process_response_headers(This, headers);
            if(FAILED(hres)) {
                WARN("parsing headers failed: %08x\n", hres);
                return hres;
            }
        }
    }

    return S_OK;
}
