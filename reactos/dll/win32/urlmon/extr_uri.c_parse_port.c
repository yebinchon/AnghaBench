
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* port; scalar_t__ scheme_type; int port_value; int port_len; int has_port; } ;
typedef TYPE_1__ parse_data ;
typedef int WCHAR ;
typedef int UINT ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int const**,TYPE_1__*,int ,int ,int,int) ;
 int TRUE ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 int USHRT_MAX ;
 int debugstr_wn (int const*,int) ;
 int is_auth_delim (int const,int) ;
 int is_num (int const) ;

__attribute__((used)) static BOOL parse_port(const WCHAR **ptr, parse_data *data, DWORD flags) {
    UINT port = 0;
    data->port = *ptr;

    while(!is_auth_delim(**ptr, data->scheme_type != URL_SCHEME_UNKNOWN)) {
        if(!is_num(**ptr)) {
            *ptr = data->port;
            data->port = ((void*)0);
            return FALSE;
        }

        port = port*10 + (**ptr-'0');

        if(port > USHRT_MAX) {
            *ptr = data->port;
            data->port = ((void*)0);
            return FALSE;
        }

        ++(*ptr);
    }

    data->has_port = TRUE;
    data->port_value = port;
    data->port_len = *ptr - data->port;

    TRACE("(%p %p %x): Found port %s len=%d value=%u\n", ptr, data, flags,
        debugstr_wn(data->port, data->port_len), data->port_len, data->port_value);
    return TRUE;
}
