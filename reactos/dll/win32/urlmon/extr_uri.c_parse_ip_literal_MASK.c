#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* host; int host_len; } ;
typedef  TYPE_1__ parse_data ;
typedef  char WCHAR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ALLOW_BRACKETLESS_IP_LITERAL ; 
 int /*<<< orphan*/  FALSE ; 
 int SKIP_IP_FUTURE_CHECK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const**,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const**,TYPE_1__*,int) ; 

__attribute__((used)) static BOOL FUNC3(const WCHAR **ptr, parse_data *data, DWORD flags, DWORD extras) {
    data->host = *ptr;

    if(**ptr != '[' && !(extras & ALLOW_BRACKETLESS_IP_LITERAL)) {
        data->host = NULL;
        return FALSE;
    } else if(**ptr == '[')
        ++(*ptr);

    if(!FUNC0(ptr, data, flags)) {
        if(extras & SKIP_IP_FUTURE_CHECK || !FUNC1(ptr, data, flags)) {
            *ptr = data->host;
            data->host = NULL;
            return FALSE;
        }
    }

    if(**ptr != ']' && !(extras & ALLOW_BRACKETLESS_IP_LITERAL)) {
        *ptr = data->host;
        data->host = NULL;
        return FALSE;
    } else if(!**ptr && extras & ALLOW_BRACKETLESS_IP_LITERAL) {
        /* The IP literal didn't contain brackets and was followed by
         * a NULL terminator, so no reason to even check the port.
         */
        data->host_len = *ptr - data->host;
        return TRUE;
    }

    ++(*ptr);
    if(**ptr == ':') {
        ++(*ptr);
        /* If a valid port is not found, then let it trickle down to
         * parse_reg_name.
         */
        if(!FUNC2(ptr, data, flags)) {
            *ptr = data->host;
            data->host = NULL;
            return FALSE;
        }
    } else
        data->host_len = *ptr - data->host;

    return TRUE;
}