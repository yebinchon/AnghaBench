#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ scheme_type; scalar_t__ host_len; char* host; } ;
typedef  TYPE_1__ parse_data ;
typedef  char WCHAR ;
struct TYPE_8__ {int host_start; size_t host_len; char* canon_uri; size_t canon_len; int authority_start; int /*<<< orphan*/  domain_offset; int /*<<< orphan*/  host_type; } ;
typedef  TYPE_2__ Uri ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__ const*,TYPE_2__*,int,int,int /*<<< orphan*/ ,size_t) ; 
 int TRUE ; 
 scalar_t__ URL_SCHEME_FILE ; 
 scalar_t__ URL_SCHEME_UNKNOWN ; 
 int Uri_CREATE_FILE_USE_DOS_PATH ; 
 int Uri_CREATE_NO_CANONICALIZE ; 
 int Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS ; 
 int /*<<< orphan*/  Uri_HOST_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 char FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (char const) ; 
 scalar_t__ FUNC7 (char const) ; 
 scalar_t__ FUNC8 (char) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const,char*) ; 
 void* FUNC11 (char const) ; 

__attribute__((used)) static BOOL FUNC12(const parse_data *data, Uri *uri,
                                  DWORD flags, BOOL computeOnly) {
    static const WCHAR localhostW[] =
            {'l','o','c','a','l','h','o','s','t',0};
    const WCHAR *ptr;
    const BOOL known_scheme = data->scheme_type != URL_SCHEME_UNKNOWN;

    if(data->scheme_type == URL_SCHEME_FILE &&
       data->host_len == FUNC9(localhostW)) {
        if(!FUNC0(data->host, localhostW, data->host_len)) {
            uri->host_start = -1;
            uri->host_len = 0;
            uri->host_type = Uri_HOST_UNKNOWN;
            return TRUE;
        }
    }

    if(data->scheme_type == URL_SCHEME_FILE && flags & Uri_CREATE_FILE_USE_DOS_PATH) {
        if(!computeOnly) {
            uri->canon_uri[uri->canon_len] = '\\';
            uri->canon_uri[uri->canon_len+1] = '\\';
        }
        uri->canon_len += 2;
        uri->authority_start = uri->canon_len;
    }

    uri->host_start = uri->canon_len;

    for(ptr = data->host; ptr < data->host+data->host_len; ++ptr) {
        if(*ptr == '%' && known_scheme) {
            WCHAR val = FUNC3(ptr);
            if(FUNC7(val)) {
                /* If NO_CANONICALIZE is not set, then windows lower cases the
                 * decoded value.
                 */
                if(!(flags & Uri_CREATE_NO_CANONICALIZE) && FUNC8(val)) {
                    if(!computeOnly)
                        uri->canon_uri[uri->canon_len] = FUNC11(val);
                } else {
                    if(!computeOnly)
                        uri->canon_uri[uri->canon_len] = val;
                }
                ++uri->canon_len;

                /* Skip past the % encoded character. */
                ptr += 2;
                continue;
            } else {
                /* Just copy the % over. */
                if(!computeOnly)
                    uri->canon_uri[uri->canon_len] = *ptr;
                ++uri->canon_len;
            }
        } else if(*ptr == '\\') {
            /* Only unknown scheme types could have made it here with a '\\' in the host name. */
            if(!computeOnly)
                uri->canon_uri[uri->canon_len] = *ptr;
            ++uri->canon_len;
        } else if(!(flags & Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS) && FUNC5(*ptr) &&
                  !FUNC7(*ptr) && !FUNC6(*ptr) && known_scheme) {
            if(!computeOnly) {
                FUNC10(*ptr, uri->canon_uri+uri->canon_len);

                /* The percent encoded value gets lower cased also. */
                if(!(flags & Uri_CREATE_NO_CANONICALIZE)) {
                    uri->canon_uri[uri->canon_len+1] = FUNC11(uri->canon_uri[uri->canon_len+1]);
                    uri->canon_uri[uri->canon_len+2] = FUNC11(uri->canon_uri[uri->canon_len+2]);
                }
            }

            uri->canon_len += 3;
        } else {
            if(!computeOnly) {
                if(!(flags & Uri_CREATE_NO_CANONICALIZE) && known_scheme)
                    uri->canon_uri[uri->canon_len] = FUNC11(*ptr);
                else
                    uri->canon_uri[uri->canon_len] = *ptr;
            }

            ++uri->canon_len;
        }
    }

    uri->host_len = uri->canon_len - uri->host_start;

    if(!computeOnly)
        FUNC1("(%p %p %x %d): Canonicalize reg_name=%s len=%d\n", data, uri, flags,
            computeOnly, FUNC2(uri->canon_uri+uri->host_start, uri->host_len),
            uri->host_len);

    if(!computeOnly)
        FUNC4(uri->canon_uri+uri->host_start, uri->host_len,
            &(uri->domain_offset));

    return TRUE;
}