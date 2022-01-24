#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ URL_SCHEME ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 scalar_t__ URL_SCHEME_FILE ; 
 scalar_t__ URL_SCHEME_RES ; 
 scalar_t__ URL_SCHEME_UNKNOWN ; 
 scalar_t__ URL_SCHEME_WILDCARD ; 
 int Uri_CREATE_FILE_USE_DOS_PATH ; 
 int Uri_CREATE_NO_CANONICALIZE ; 
 int Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 scalar_t__ FUNC7 (char const) ; 
 scalar_t__ FUNC8 (char const) ; 
 int /*<<< orphan*/  FUNC9 (char const,char*) ; 
 int FUNC10 (char*,int) ; 

__attribute__((used)) static DWORD FUNC11(const WCHAR *path, DWORD path_len, URL_SCHEME scheme_type, BOOL has_host, DWORD flags,
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
        /* Check if a '/' needs to be appended for the file scheme. */
        if(path_len > 1 && FUNC5(ptr) && !(flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
            if(ret_path)
                ret_path[len] = '/';
            len++;
            escape_pct = TRUE;
        } else if(*ptr == '/') {
            if(!(flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
                /* Copy the extra '/' over. */
                if(ret_path)
                    ret_path[len] = '/';
                len++;
            }
            ++ptr;
        }

        if(FUNC5(ptr)) {
            if(ret_path) {
                ret_path[len] = *ptr;
                /* If there's a '|' after the drive letter, convert it to a ':'. */
                ret_path[len+1] = ':';
            }
            ptr += 2;
            len += 2;
        }
    }

    if(!is_file && *path && *path != '/') {
        /* Prepend a '/' to the path if it doesn't have one. */
        if(ret_path)
            ret_path[len] = '/';
        len++;
    }

    for(; ptr < path+path_len; ++ptr) {
        BOOL do_default_action = TRUE;

        if(*ptr == '%' && !is_res) {
            const WCHAR *tmp = ptr;
            WCHAR val;

            /* Check if the % represents a valid encoded char, or if it needs encoding. */
            BOOL force_encode = !FUNC1(&tmp) && is_file && !(flags&Uri_CREATE_FILE_USE_DOS_PATH);
            val = FUNC3(ptr);

            if(force_encode || escape_pct) {
                /* Escape the percent sign in the file URI. */
                if(ret_path)
                    FUNC9(*ptr, ret_path+len);
                len += 3;
                do_default_action = FALSE;
            } else if((FUNC8(val) && known_scheme) ||
                      (is_file && !is_implicit_scheme && (FUNC8(val) || FUNC7(val) ||
                      (val && flags&Uri_CREATE_FILE_USE_DOS_PATH && !FUNC6(val))))) {
                if(ret_path)
                    ret_path[len] = val;
                len++;

                ptr += 2;
                continue;
            }
        } else if(*ptr == '/' && is_file && (flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
            /* Convert the '/' back to a '\\'. */
            if(ret_path)
                ret_path[len] = '\\';
            len++;
            do_default_action = FALSE;
        } else if(*ptr == '\\' && known_scheme) {
            if(!(is_file && (flags & Uri_CREATE_FILE_USE_DOS_PATH))) {
                /* Convert '\\' into a '/'. */
                if(ret_path)
                    ret_path[len] = '/';
                len++;
                do_default_action = FALSE;
            }
        } else if(known_scheme && !is_res && FUNC4(*ptr) && !FUNC8(*ptr) && !FUNC7(*ptr) &&
                  (!(flags & Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS) || is_file)) {
            if(!is_file || !(flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
                /* Escape the forbidden character. */
                if(ret_path)
                    FUNC9(*ptr, ret_path+len);
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

    /* Removing the dot segments only happens when it's not in
     * computeOnly mode and it's not a wildcard scheme. File schemes
     * with USE_DOS_PATH set don't get dot segments removed.
     */
    if(!(is_file && (flags & Uri_CREATE_FILE_USE_DOS_PATH)) &&
       scheme_type != URL_SCHEME_WILDCARD) {
        if(!(flags & Uri_CREATE_NO_CANONICALIZE) && ret_path) {
            /* Remove the dot segments (if any) and reset everything to the new
             * correct length.
             */
            len = FUNC10(ret_path, len);
        }
    }

    if(ret_path)
        FUNC0("Canonicalized path %s len=%d\n", FUNC2(ret_path, len), len);
    return len;
}