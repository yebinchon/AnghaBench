
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int host_type; int host_len; scalar_t__ host; int scheme_type; } ;
typedef TYPE_1__ parse_data ;
typedef int WCHAR ;
struct TYPE_14__ {int host_start; int host_len; int domain_offset; int host_type; int canon_len; int canon_uri; } ;
typedef TYPE_2__ Uri ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,TYPE_1__ const*,TYPE_2__*,int ,int ,int) ;
 int TRUE ;
 int URL_SCHEME_FILE ;




 int canonicalize_ipv4address (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_ipv6address (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_reg_name (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int memcpy (int,scalar_t__,int) ;

__attribute__((used)) static BOOL canonicalize_host(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    uri->host_start = -1;
    uri->host_len = 0;
    uri->domain_offset = -1;

    if(data->host) {
        switch(data->host_type) {
        case 131:
            uri->host_type = 131;
            if(!canonicalize_reg_name(data, uri, flags, computeOnly))
                return FALSE;

            break;
        case 130:
            uri->host_type = 130;
            if(!canonicalize_ipv4address(data, uri, flags, computeOnly))
                return FALSE;

            break;
        case 129:
            if(!canonicalize_ipv6address(data, uri, flags, computeOnly))
                return FALSE;

            uri->host_type = 129;
            break;
        case 128:
            if(data->host_len > 0 || data->scheme_type != URL_SCHEME_FILE) {
                uri->host_start = uri->canon_len;


                if(!computeOnly)
                    memcpy(uri->canon_uri+uri->canon_len, data->host, data->host_len*sizeof(WCHAR));
                uri->canon_len += data->host_len;
                uri->host_len = data->host_len;
            }

            uri->host_type = 128;
            break;
        default:
            FIXME("(%p %p %x %d): Canonicalization for host type %d not supported.\n", data,
                    uri, flags, computeOnly, data->host_type);
            return FALSE;
       }
   }

   return TRUE;
}
