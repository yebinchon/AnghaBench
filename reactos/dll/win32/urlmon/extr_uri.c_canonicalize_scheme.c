
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t scheme_len; int * scheme; int uri; int is_relative; } ;
typedef TYPE_1__ parse_data ;
struct TYPE_10__ {int scheme_start; size_t scheme_len; size_t canon_len; char* canon_uri; } ;
typedef TYPE_2__ Uri ;
typedef size_t INT ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,TYPE_1__ const*,TYPE_2__*,size_t,int ) ;
 int TRACE (char*,TYPE_1__ const*,TYPE_2__*,size_t,int ,size_t) ;
 int TRUE ;
 int debugstr_w (int ) ;
 int debugstr_wn (char*,size_t) ;
 char tolowerW (int ) ;

__attribute__((used)) static BOOL canonicalize_scheme(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    uri->scheme_start = -1;
    uri->scheme_len = 0;

    if(!data->scheme) {



        if(!data->is_relative) {
            FIXME("(%p %p %x): Unable to determine the scheme type of %s.\n", data,
                    uri, flags, debugstr_w(data->uri));
            return FALSE;
        }
    } else {
        if(!computeOnly) {
            DWORD i;
            INT pos = uri->canon_len;

            for(i = 0; i < data->scheme_len; ++i) {

                uri->canon_uri[i + pos] = tolowerW(data->scheme[i]);
            }

            uri->canon_uri[i + pos] = ':';
            uri->scheme_start = pos;

            TRACE("(%p %p %x): Canonicalized scheme=%s, len=%d.\n", data, uri, flags,
                    debugstr_wn(uri->canon_uri+uri->scheme_start, data->scheme_len), data->scheme_len);
        }


        uri->canon_len += data->scheme_len + 1;
        uri->scheme_len = data->scheme_len;
    }
    return TRUE;
}
