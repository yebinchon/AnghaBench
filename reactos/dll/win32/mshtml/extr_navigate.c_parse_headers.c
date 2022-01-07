
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;
typedef char WCHAR ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int set_http_header (struct list*,char const*,int,char const*,int) ;

__attribute__((used)) static HRESULT parse_headers(const WCHAR *headers, struct list *headers_list)
{
    const WCHAR *header, *header_end, *colon, *value;
    HRESULT hres;

    header = headers;
    while(*header) {
        if(header[0] == '\r' && header[1] == '\n' && !header[2])
            break;
        for(colon = header; *colon && *colon != ':' && *colon != '\r'; colon++);
        if(*colon != ':')
            return E_FAIL;

        value = colon+1;
        while(*value == ' ')
            value++;
        if(!*value)
            return E_FAIL;

        for(header_end = value+1; *header_end && *header_end != '\r'; header_end++);

        hres = set_http_header(headers_list, header, colon-header, value, header_end-value);
        if(FAILED(hres))
            return hres;

        header = header_end;
        if(header[0] == '\r' && header[1] == '\n')
            header += 2;
    }

    return S_OK;
}
