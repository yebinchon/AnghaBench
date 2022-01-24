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
struct TYPE_4__ {int const* port; scalar_t__ scheme_type; int port_value; int port_len; int /*<<< orphan*/  has_port; } ;
typedef  TYPE_1__ parse_data ;
typedef  int WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int const**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ URL_SCHEME_UNKNOWN ; 
 int USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 

__attribute__((used)) static BOOL FUNC4(const WCHAR **ptr, parse_data *data, DWORD flags) {
    UINT port = 0;
    data->port = *ptr;

    while(!FUNC2(**ptr, data->scheme_type != URL_SCHEME_UNKNOWN)) {
        if(!FUNC3(**ptr)) {
            *ptr = data->port;
            data->port = NULL;
            return FALSE;
        }

        port = port*10 + (**ptr-'0');

        if(port > USHRT_MAX) {
            *ptr = data->port;
            data->port = NULL;
            return FALSE;
        }

        ++(*ptr);
    }

    data->has_port = TRUE;
    data->port_value = port;
    data->port_len = *ptr - data->port;

    FUNC0("(%p %p %x): Found port %s len=%d value=%u\n", ptr, data, flags,
        FUNC1(data->port, data->port_len), data->port_len, data->port_value);
    return TRUE;
}