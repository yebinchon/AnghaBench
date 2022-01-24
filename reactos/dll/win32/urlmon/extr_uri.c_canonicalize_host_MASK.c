#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int host_type; int host_len; scalar_t__ host; int /*<<< orphan*/  scheme_type; } ;
typedef  TYPE_1__ parse_data ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {int host_start; int host_len; int domain_offset; int host_type; int canon_len; int canon_uri; } ;
typedef  TYPE_2__ Uri ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  URL_SCHEME_FILE ; 
#define  Uri_HOST_DNS 131 
#define  Uri_HOST_IPV4 130 
#define  Uri_HOST_IPV6 129 
#define  Uri_HOST_UNKNOWN 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int) ; 

__attribute__((used)) static BOOL FUNC5(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    uri->host_start = -1;
    uri->host_len = 0;
    uri->domain_offset = -1;

    if(data->host) {
        switch(data->host_type) {
        case Uri_HOST_DNS:
            uri->host_type = Uri_HOST_DNS;
            if(!FUNC3(data, uri, flags, computeOnly))
                return FALSE;

            break;
        case Uri_HOST_IPV4:
            uri->host_type = Uri_HOST_IPV4;
            if(!FUNC1(data, uri, flags, computeOnly))
                return FALSE;

            break;
        case Uri_HOST_IPV6:
            if(!FUNC2(data, uri, flags, computeOnly))
                return FALSE;

            uri->host_type = Uri_HOST_IPV6;
            break;
        case Uri_HOST_UNKNOWN:
            if(data->host_len > 0 || data->scheme_type != URL_SCHEME_FILE) {
                uri->host_start = uri->canon_len;

                /* Nothing happens to unknown host types. */
                if(!computeOnly)
                    FUNC4(uri->canon_uri+uri->canon_len, data->host, data->host_len*sizeof(WCHAR));
                uri->canon_len += data->host_len;
                uri->host_len = data->host_len;
            }

            uri->host_type = Uri_HOST_UNKNOWN;
            break;
        default:
            FUNC0("(%p %p %x %d): Canonicalization for host type %d not supported.\n", data,
                    uri, flags, computeOnly, data->host_type);
            return FALSE;
       }
   }

   return TRUE;
}