
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* username; int username_len; scalar_t__ scheme_type; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
struct TYPE_6__ {int userinfo_start; size_t canon_len; char* canon_uri; } ;
typedef TYPE_2__ Uri ;
typedef int DWORD ;
typedef int BOOL ;


 int TRUE ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 int Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS ;
 char decode_pct_val (char const*) ;
 scalar_t__ is_ascii (char const) ;
 int is_reserved (char const) ;
 scalar_t__ is_unreserved (char const) ;
 int pct_encode_val (char const,char*) ;

__attribute__((used)) static BOOL canonicalize_username(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    const WCHAR *ptr;

    if(!data->username) {
        uri->userinfo_start = -1;
        return TRUE;
    }

    uri->userinfo_start = uri->canon_len;
    for(ptr = data->username; ptr < data->username+data->username_len; ++ptr) {
        if(*ptr == '%') {

            if(data->scheme_type != URL_SCHEME_UNKNOWN) {

                WCHAR val = decode_pct_val(ptr);
                if(is_unreserved(val)) {
                    if(!computeOnly)
                        uri->canon_uri[uri->canon_len] = val;

                    ++uri->canon_len;


                    ptr += 2;
                    continue;
                }
            }
        } else if(is_ascii(*ptr) && !is_reserved(*ptr) && !is_unreserved(*ptr) && *ptr != '\\') {



            if(!(flags & Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS)) {
                if(!computeOnly)
                    pct_encode_val(*ptr, uri->canon_uri + uri->canon_len);

                uri->canon_len += 3;
                continue;
            }
        }

        if(!computeOnly)

            uri->canon_uri[uri->canon_len] = *ptr;
        ++uri->canon_len;
    }

    return TRUE;
}
