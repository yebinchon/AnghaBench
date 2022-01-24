#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t scheme_len; int /*<<< orphan*/ * scheme; int /*<<< orphan*/  uri; int /*<<< orphan*/  is_relative; } ;
typedef  TYPE_1__ parse_data ;
struct TYPE_10__ {int scheme_start; size_t scheme_len; size_t canon_len; char* canon_uri; } ;
typedef  TYPE_2__ Uri ;
typedef  size_t INT ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*,TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__ const*,TYPE_2__*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    uri->scheme_start = -1;
    uri->scheme_len = 0;

    if(!data->scheme) {
        /* The only type of URI that doesn't have to have a scheme is a relative
         * URI.
         */
        if(!data->is_relative) {
            FUNC0("(%p %p %x): Unable to determine the scheme type of %s.\n", data,
                    uri, flags, FUNC2(data->uri));
            return FALSE;
        }
    } else {
        if(!computeOnly) {
            DWORD i;
            INT pos = uri->canon_len;

            for(i = 0; i < data->scheme_len; ++i) {
                /* Scheme name must be lower case after canonicalization. */
                uri->canon_uri[i + pos] = FUNC4(data->scheme[i]);
            }

            uri->canon_uri[i + pos] = ':';
            uri->scheme_start = pos;

            FUNC1("(%p %p %x): Canonicalized scheme=%s, len=%d.\n", data, uri, flags,
                    FUNC3(uri->canon_uri+uri->scheme_start,  data->scheme_len), data->scheme_len);
        }

        /* This happens in both computation modes. */
        uri->canon_len += data->scheme_len + 1;
        uri->scheme_len = data->scheme_len;
    }
    return TRUE;
}