#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ scheme_type; char const* path; int path_len; } ;
typedef  TYPE_1__ parse_data ;
typedef  char WCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const**,TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 scalar_t__ URL_SCHEME_FILE ; 
 scalar_t__ URL_SCHEME_MAILTO ; 
 scalar_t__ URL_SCHEME_UNKNOWN ; 
 int Uri_CREATE_FILE_USE_DOS_PATH ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const) ; 

__attribute__((used)) static BOOL FUNC5(const WCHAR **ptr, parse_data *data, DWORD flags) {
    const BOOL known_scheme = data->scheme_type != URL_SCHEME_UNKNOWN;
    const BOOL is_file = data->scheme_type == URL_SCHEME_FILE;
    const BOOL is_mailto = data->scheme_type == URL_SCHEME_MAILTO;

    if (is_mailto && (*ptr)[0] == '/' && (*ptr)[1] == '/')
    {
        if ((*ptr)[2]) data->path = *ptr + 2;
        else data->path = NULL;
    }
    else
        data->path = *ptr;

    while(!FUNC4(data->scheme_type, **ptr)) {
        if(**ptr == '%' && known_scheme) {
            if(!FUNC1(ptr)) {
                *ptr = data->path;
                data->path = NULL;
                return FALSE;
            } else
                continue;
        } else if(FUNC3(**ptr) && is_file &&
                  (flags & Uri_CREATE_FILE_USE_DOS_PATH)) {
            *ptr = data->path;
            data->path = NULL;
            return FALSE;
        }

        ++(*ptr);
    }

    if (data->path) data->path_len = *ptr - data->path;
    FUNC0("(%p %p %x): Parsed opaque URI path %s len=%d\n", ptr, data, flags,
        FUNC2(data->path, data->path_len), data->path_len);
    return TRUE;
}