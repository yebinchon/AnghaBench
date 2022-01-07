
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scheme_type; char const* path; int path_len; int must_have_path; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,char const**,TYPE_1__*,int,...) ;
 int TRUE ;
 scalar_t__ URL_SCHEME_FILE ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 scalar_t__ URL_SCHEME_WILDCARD ;
 int Uri_CREATE_FILE_USE_DOS_PATH ;
 int Uri_CREATE_NO_CANONICALIZE ;
 int check_pct_encoded (char const**) ;
 int debugstr_wn (char const*,int) ;
 scalar_t__ is_forbidden_dos_path_char (char const) ;
 scalar_t__ is_path_delim (scalar_t__,char const) ;

__attribute__((used)) static BOOL parse_path_hierarchical(const WCHAR **ptr, parse_data *data, DWORD flags) {
    const WCHAR *start = *ptr;
    static const WCHAR slash[] = {'/',0};
    const BOOL is_file = data->scheme_type == URL_SCHEME_FILE;

    if(is_path_delim(data->scheme_type, **ptr)) {
        if(data->scheme_type == URL_SCHEME_WILDCARD && !data->must_have_path) {
            data->path = ((void*)0);
            data->path_len = 0;
        } else if(!(flags & Uri_CREATE_NO_CANONICALIZE)) {

            data->path = slash;
            data->path_len = 1;
        }
    } else {
        while(!is_path_delim(data->scheme_type, **ptr)) {
            if(**ptr == '%' && data->scheme_type != URL_SCHEME_UNKNOWN && !is_file) {
                if(!check_pct_encoded(ptr)) {
                    *ptr = start;
                    return FALSE;
                } else
                    continue;
            } else if(is_forbidden_dos_path_char(**ptr) && is_file &&
                      (flags & Uri_CREATE_FILE_USE_DOS_PATH)) {



                *ptr = start;
                return FALSE;
            } else if(**ptr == '\\') {



                if(flags & Uri_CREATE_NO_CANONICALIZE) {
                    if(data->scheme_type != URL_SCHEME_FILE &&
                       data->scheme_type != URL_SCHEME_UNKNOWN) {
                        *ptr = start;
                        return FALSE;
                    }
                }
            }

            ++(*ptr);
        }





        if(*ptr == start) {
            data->path = ((void*)0);
            data->path_len = 0;
        } else {
            data->path = start;
            data->path_len = *ptr - start;
        }
    }

    if(data->path)
        TRACE("(%p %p %x): Parsed path %s len=%d\n", ptr, data, flags,
            debugstr_wn(data->path, data->path_len), data->path_len);
    else
        TRACE("(%p %p %x): The URI contained no path\n", ptr, data, flags);

    return TRUE;
}
