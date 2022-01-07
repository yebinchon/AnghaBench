
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__ URL_SCHEME ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,int ,int) ;
 int TRUE ;
 scalar_t__ URL_SCHEME_FILE ;
 scalar_t__ URL_SCHEME_RES ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 scalar_t__ URL_SCHEME_WILDCARD ;
 int Uri_CREATE_FILE_USE_DOS_PATH ;
 int Uri_CREATE_NO_CANONICALIZE ;
 int Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS ;
 int check_pct_encoded (char const**) ;
 int debugstr_wn (char*,int) ;
 char decode_pct_val (char const*) ;
 scalar_t__ is_ascii (char const) ;
 scalar_t__ is_drive_path (char const*) ;
 int is_forbidden_dos_path_char (char) ;
 scalar_t__ is_reserved (char const) ;
 scalar_t__ is_unreserved (char const) ;
 int pct_encode_val (char const,char*) ;
 int remove_dot_segments (char*,int) ;

__attribute__((used)) static DWORD canonicalize_path_hierarchical(const WCHAR *path, DWORD path_len, URL_SCHEME scheme_type, BOOL has_host, DWORD flags,
        BOOL is_implicit_scheme, WCHAR *ret_path) {
    const BOOL known_scheme = scheme_type != URL_SCHEME_UNKNOWN;
    const BOOL is_file = scheme_type == URL_SCHEME_FILE;
    const BOOL is_res = scheme_type == URL_SCHEME_RES;
    const WCHAR *ptr;
    BOOL escape_pct = FALSE;
    DWORD len = 0;

    if(!path)
        return 0;

    ptr = path;

    if(is_file && !has_host) {

        if(path_len > 1 && is_drive_path(ptr) && !(flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
            if(ret_path)
                ret_path[len] = '/';
            len++;
            escape_pct = TRUE;
        } else if(*ptr == '/') {
            if(!(flags & Uri_CREATE_FILE_USE_DOS_PATH)) {

                if(ret_path)
                    ret_path[len] = '/';
                len++;
            }
            ++ptr;
        }

        if(is_drive_path(ptr)) {
            if(ret_path) {
                ret_path[len] = *ptr;

                ret_path[len+1] = ':';
            }
            ptr += 2;
            len += 2;
        }
    }

    if(!is_file && *path && *path != '/') {

        if(ret_path)
            ret_path[len] = '/';
        len++;
    }

    for(; ptr < path+path_len; ++ptr) {
        BOOL do_default_action = TRUE;

        if(*ptr == '%' && !is_res) {
            const WCHAR *tmp = ptr;
            WCHAR val;


            BOOL force_encode = !check_pct_encoded(&tmp) && is_file && !(flags&Uri_CREATE_FILE_USE_DOS_PATH);
            val = decode_pct_val(ptr);

            if(force_encode || escape_pct) {

                if(ret_path)
                    pct_encode_val(*ptr, ret_path+len);
                len += 3;
                do_default_action = FALSE;
            } else if((is_unreserved(val) && known_scheme) ||
                      (is_file && !is_implicit_scheme && (is_unreserved(val) || is_reserved(val) ||
                      (val && flags&Uri_CREATE_FILE_USE_DOS_PATH && !is_forbidden_dos_path_char(val))))) {
                if(ret_path)
                    ret_path[len] = val;
                len++;

                ptr += 2;
                continue;
            }
        } else if(*ptr == '/' && is_file && (flags & Uri_CREATE_FILE_USE_DOS_PATH)) {

            if(ret_path)
                ret_path[len] = '\\';
            len++;
            do_default_action = FALSE;
        } else if(*ptr == '\\' && known_scheme) {
            if(!(is_file && (flags & Uri_CREATE_FILE_USE_DOS_PATH))) {

                if(ret_path)
                    ret_path[len] = '/';
                len++;
                do_default_action = FALSE;
            }
        } else if(known_scheme && !is_res && is_ascii(*ptr) && !is_unreserved(*ptr) && !is_reserved(*ptr) &&
                  (!(flags & Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS) || is_file)) {
            if(!is_file || !(flags & Uri_CREATE_FILE_USE_DOS_PATH)) {

                if(ret_path)
                    pct_encode_val(*ptr, ret_path+len);
                len += 3;
                do_default_action = FALSE;
            }
        }

        if(do_default_action) {
            if(ret_path)
                ret_path[len] = *ptr;
            len++;
        }
    }





    if(!(is_file && (flags & Uri_CREATE_FILE_USE_DOS_PATH)) &&
       scheme_type != URL_SCHEME_WILDCARD) {
        if(!(flags & Uri_CREATE_NO_CANONICALIZE) && ret_path) {



            len = remove_dot_segments(ret_path, len);
        }
    }

    if(ret_path)
        TRACE("Canonicalized path %s len=%d\n", debugstr_wn(ret_path, len), len);
    return len;
}
