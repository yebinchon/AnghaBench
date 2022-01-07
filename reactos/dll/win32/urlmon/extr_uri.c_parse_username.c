
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* username; scalar_t__ scheme_type; int username_len; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int ALLOW_NULL_TERM_USER_NAME ;
 int FALSE ;
 int TRUE ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 int check_pct_encoded (char const**) ;
 scalar_t__ is_auth_delim (char const,int) ;

__attribute__((used)) static BOOL parse_username(const WCHAR **ptr, parse_data *data, DWORD flags, DWORD extras) {
    data->username = *ptr;

    while(**ptr != ':' && **ptr != '@') {
        if(**ptr == '%') {
            if(!check_pct_encoded(ptr)) {
                if(data->scheme_type != URL_SCHEME_UNKNOWN) {
                    *ptr = data->username;
                    data->username = ((void*)0);
                    return FALSE;
                }
            } else
                continue;
        } else if(extras & ALLOW_NULL_TERM_USER_NAME && !**ptr)
            break;
        else if(is_auth_delim(**ptr, data->scheme_type != URL_SCHEME_UNKNOWN)) {
            *ptr = data->username;
            data->username = ((void*)0);
            return FALSE;
        }

        ++(*ptr);
    }

    data->username_len = *ptr - data->username;
    return TRUE;
}
