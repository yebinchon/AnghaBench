
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scheme_type; char const* path; int path_len; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,char const**,TYPE_1__*,int,int ,int) ;
 int TRUE ;
 scalar_t__ URL_SCHEME_FILE ;
 scalar_t__ URL_SCHEME_MAILTO ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 int Uri_CREATE_FILE_USE_DOS_PATH ;
 int check_pct_encoded (char const**) ;
 int debugstr_wn (char const*,int) ;
 scalar_t__ is_forbidden_dos_path_char (char const) ;
 int is_path_delim (scalar_t__,char const) ;

__attribute__((used)) static BOOL parse_path_opaque(const WCHAR **ptr, parse_data *data, DWORD flags) {
    const BOOL known_scheme = data->scheme_type != URL_SCHEME_UNKNOWN;
    const BOOL is_file = data->scheme_type == URL_SCHEME_FILE;
    const BOOL is_mailto = data->scheme_type == URL_SCHEME_MAILTO;

    if (is_mailto && (*ptr)[0] == '/' && (*ptr)[1] == '/')
    {
        if ((*ptr)[2]) data->path = *ptr + 2;
        else data->path = ((void*)0);
    }
    else
        data->path = *ptr;

    while(!is_path_delim(data->scheme_type, **ptr)) {
        if(**ptr == '%' && known_scheme) {
            if(!check_pct_encoded(ptr)) {
                *ptr = data->path;
                data->path = ((void*)0);
                return FALSE;
            } else
                continue;
        } else if(is_forbidden_dos_path_char(**ptr) && is_file &&
                  (flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
            *ptr = data->path;
            data->path = ((void*)0);
            return FALSE;
        }

        ++(*ptr);
    }

    if (data->path) data->path_len = *ptr - data->path;
    TRACE("(%p %p %x): Parsed opaque URI path %s len=%d\n", ptr, data, flags,
        debugstr_wn(data->path, data->path_len), data->path_len);
    return TRUE;
}
