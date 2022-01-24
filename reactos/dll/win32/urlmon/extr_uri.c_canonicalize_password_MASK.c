#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* password; int password_len; scalar_t__ scheme_type; } ;
typedef  TYPE_1__ parse_data ;
typedef  char WCHAR ;
struct TYPE_6__ {int userinfo_split; int userinfo_start; size_t canon_len; char* canon_uri; } ;
typedef  TYPE_2__ Uri ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ URL_SCHEME_UNKNOWN ; 
 int Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS ; 
 char FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const,char*) ; 

__attribute__((used)) static BOOL FUNC5(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    const WCHAR *ptr;

    if(!data->password) {
        uri->userinfo_split = -1;
        return TRUE;
    }

    if(uri->userinfo_start == -1)
        /* Has a password, but, doesn't have a username. */
        uri->userinfo_start = uri->canon_len;

    uri->userinfo_split = uri->canon_len - uri->userinfo_start;

    /* Add the ':' to the userinfo component. */
    if(!computeOnly)
        uri->canon_uri[uri->canon_len] = ':';
    ++uri->canon_len;

    for(ptr = data->password; ptr < data->password+data->password_len; ++ptr) {
        if(*ptr == '%') {
            /* Only decode % encoded values for known scheme types. */
            if(data->scheme_type != URL_SCHEME_UNKNOWN) {
                /* See if the value really needs decoding. */
                WCHAR val = FUNC0(ptr);
                if(FUNC3(val)) {
                    if(!computeOnly)
                        uri->canon_uri[uri->canon_len] = val;

                    ++uri->canon_len;

                    /* Move pass the hex characters. */
                    ptr += 2;
                    continue;
                }
            }
        } else if(FUNC1(*ptr) && !FUNC2(*ptr) && !FUNC3(*ptr) && *ptr != '\\') {
            /* Only percent encode forbidden characters if the NO_ENCODE_FORBIDDEN_CHARACTERS flag
             * is NOT set.
             */
            if(!(flags & Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS)) {
                if(!computeOnly)
                    FUNC4(*ptr, uri->canon_uri + uri->canon_len);

                uri->canon_len += 3;
                continue;
            }
        }

        if(!computeOnly)
            /* Nothing special, so just copy the character over. */
            uri->canon_uri[uri->canon_len] = *ptr;
        ++uri->canon_len;
    }

    return TRUE;
}