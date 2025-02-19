
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ scheme_type; char* fragment; int fragment_len; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
struct TYPE_8__ {int fragment_start; size_t fragment_len; size_t canon_len; char* canon_uri; } ;
typedef TYPE_2__ Uri ;
typedef int DWORD ;
typedef int BOOL ;


 int TRACE (char*,TYPE_1__ const*,TYPE_2__*,int,int,int ,size_t) ;
 int TRUE ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 int Uri_CREATE_NO_DECODE_EXTRA_INFO ;
 int Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS ;
 int debugstr_wn (char*,size_t) ;
 char decode_pct_val (char const*) ;
 scalar_t__ is_ascii (char const) ;
 int is_reserved (char const) ;
 scalar_t__ is_unreserved (char const) ;
 int pct_encode_val (char const,char*) ;

__attribute__((used)) static BOOL canonicalize_fragment(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    const WCHAR *ptr, *end;
    const BOOL known_scheme = data->scheme_type != URL_SCHEME_UNKNOWN;

    if(!data->fragment) {
        uri->fragment_start = -1;
        uri->fragment_len = 0;
        return TRUE;
    }

    uri->fragment_start = uri->canon_len;

    end = data->fragment + data->fragment_len;
    for(ptr = data->fragment; ptr < end; ++ptr) {
        if(*ptr == '%') {
            if(known_scheme && !(flags & Uri_CREATE_NO_DECODE_EXTRA_INFO)) {
                WCHAR val = decode_pct_val(ptr);
                if(is_unreserved(val)) {
                    if(!computeOnly)
                        uri->canon_uri[uri->canon_len] = val;
                    ++uri->canon_len;

                    ptr += 2;
                    continue;
                }
            }
        } else if(known_scheme && is_ascii(*ptr) && !is_unreserved(*ptr) && !is_reserved(*ptr)) {
            if(!(flags & Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS) &&
               !(flags & Uri_CREATE_NO_DECODE_EXTRA_INFO)) {
                if(!computeOnly)
                    pct_encode_val(*ptr, uri->canon_uri+uri->canon_len);
                uri->canon_len += 3;
                continue;
            }
        }

        if(!computeOnly)
            uri->canon_uri[uri->canon_len] = *ptr;
        ++uri->canon_len;
    }

    uri->fragment_len = uri->canon_len - uri->fragment_start;

    if(!computeOnly)
        TRACE("(%p %p %x %d): Canonicalized fragment %s len=%d\n", data, uri, flags,
            computeOnly, debugstr_wn(uri->canon_uri+uri->fragment_start, uri->fragment_len),
            uri->fragment_len);
    return TRUE;
}
