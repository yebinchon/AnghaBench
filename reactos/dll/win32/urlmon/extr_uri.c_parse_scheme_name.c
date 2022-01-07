
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* scheme; int scheme_len; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int ALLOW_NULL_TERM_SCHEME ;
 int FALSE ;
 int TRUE ;
 int is_alpha (char const) ;
 int is_num (char const) ;

__attribute__((used)) static BOOL parse_scheme_name(const WCHAR **ptr, parse_data *data, DWORD extras) {
    const WCHAR *start = *ptr;

    data->scheme = ((void*)0);
    data->scheme_len = 0;

    while(**ptr) {
        if(**ptr == '*' && *ptr == start) {



            ++(*ptr);
            break;
        } else if(!is_num(**ptr) && !is_alpha(**ptr) && **ptr != '+' &&
           **ptr != '-' && **ptr != '.')
            break;

        (*ptr)++;
    }

    if(*ptr == start)
        return FALSE;


    if(**ptr != ':' && !((extras & ALLOW_NULL_TERM_SCHEME) && !**ptr)) {
        *ptr = start;
        return FALSE;
    }

    data->scheme = start;
    data->scheme_len = *ptr - start;

    ++(*ptr);
    return TRUE;
}
