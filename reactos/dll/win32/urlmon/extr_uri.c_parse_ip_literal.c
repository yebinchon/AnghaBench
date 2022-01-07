
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* host; int host_len; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int ALLOW_BRACKETLESS_IP_LITERAL ;
 int FALSE ;
 int SKIP_IP_FUTURE_CHECK ;
 int TRUE ;
 int parse_ipv6address (char const**,TYPE_1__*,int) ;
 int parse_ipvfuture (char const**,TYPE_1__*,int) ;
 int parse_port (char const**,TYPE_1__*,int) ;

__attribute__((used)) static BOOL parse_ip_literal(const WCHAR **ptr, parse_data *data, DWORD flags, DWORD extras) {
    data->host = *ptr;

    if(**ptr != '[' && !(extras & ALLOW_BRACKETLESS_IP_LITERAL)) {
        data->host = ((void*)0);
        return FALSE;
    } else if(**ptr == '[')
        ++(*ptr);

    if(!parse_ipv6address(ptr, data, flags)) {
        if(extras & SKIP_IP_FUTURE_CHECK || !parse_ipvfuture(ptr, data, flags)) {
            *ptr = data->host;
            data->host = ((void*)0);
            return FALSE;
        }
    }

    if(**ptr != ']' && !(extras & ALLOW_BRACKETLESS_IP_LITERAL)) {
        *ptr = data->host;
        data->host = ((void*)0);
        return FALSE;
    } else if(!**ptr && extras & ALLOW_BRACKETLESS_IP_LITERAL) {



        data->host_len = *ptr - data->host;
        return TRUE;
    }

    ++(*ptr);
    if(**ptr == ':') {
        ++(*ptr);



        if(!parse_port(ptr, data, flags)) {
            *ptr = data->host;
            data->host = ((void*)0);
            return FALSE;
        }
    } else
        data->host_len = *ptr - data->host;

    return TRUE;
}
