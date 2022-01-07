
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ scheme_type; scalar_t__ port_value; int port_len; scalar_t__ port; scalar_t__ has_port; } ;
typedef TYPE_1__ parse_data ;
typedef int WCHAR ;
struct TYPE_8__ {int port_offset; int has_port; size_t canon_len; int authority_start; char* canon_uri; scalar_t__ port; } ;
typedef TYPE_2__ Uri ;
typedef scalar_t__ USHORT ;
struct TYPE_9__ {scalar_t__ scheme; scalar_t__ port; } ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 size_t Uri_CREATE_NO_CANONICALIZE ;
 TYPE_3__* default_ports ;
 int memcpy (char*,scalar_t__,int) ;
 scalar_t__ ui2str (char*,scalar_t__) ;

__attribute__((used)) static BOOL canonicalize_port(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    BOOL has_default_port = FALSE;
    USHORT default_port = 0;
    DWORD i;

    uri->port_offset = -1;


    for(i = 0; i < ARRAY_SIZE(default_ports); ++i) {
        if(default_ports[i].scheme == data->scheme_type) {
            has_default_port = TRUE;
            default_port = default_ports[i].port;
            break;
        }
    }

    uri->has_port = data->has_port || has_default_port;







    if(has_default_port && data->has_port && data->port_value == default_port) {

        if(flags & Uri_CREATE_NO_CANONICALIZE) {
            uri->port_offset = uri->canon_len-uri->authority_start;
            if(!computeOnly)
                uri->canon_uri[uri->canon_len] = ':';
            ++uri->canon_len;

            if(data->port) {

                if(!computeOnly)
                    memcpy(uri->canon_uri+uri->canon_len, data->port, data->port_len*sizeof(WCHAR));
                uri->canon_len += data->port_len;
            } else {
                if(!computeOnly)
                    uri->canon_len += ui2str(uri->canon_uri+uri->canon_len, data->port_value);
                else
                    uri->canon_len += ui2str(((void*)0), data->port_value);
            }
        }

        uri->port = default_port;
    } else if(data->has_port) {
        uri->port_offset = uri->canon_len-uri->authority_start;
        if(!computeOnly)
            uri->canon_uri[uri->canon_len] = ':';
        ++uri->canon_len;

        if(flags & Uri_CREATE_NO_CANONICALIZE && data->port) {

            if(!computeOnly)
                memcpy(uri->canon_uri+uri->canon_len, data->port, data->port_len*sizeof(WCHAR));
            uri->canon_len += data->port_len;
        } else {
            if(!computeOnly)
                uri->canon_len += ui2str(uri->canon_uri+uri->canon_len, data->port_value);
            else
                uri->canon_len += ui2str(((void*)0), data->port_value);
        }

        uri->port = data->port_value;
    } else if(has_default_port)
        uri->port = default_port;

    return TRUE;
}
