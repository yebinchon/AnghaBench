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
typedef  int /*<<< orphan*/  length ;
typedef  int /*<<< orphan*/  cf ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int CLIPFORMAT ;

/* Variables and functions */
 scalar_t__ DV_E_CLIPFORMAT ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,...) ; 
 int FUNC4 (char*) ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static HRESULT FUNC5(IStream *stream, CLIPFORMAT *clipformat)
{
    DWORD length;
    HRESULT hr;
    ULONG read;

    *clipformat = 0;

    hr = FUNC3(stream, &length, sizeof(length), &read);
    if (hr != S_OK || read != sizeof(length))
        return DV_E_CLIPFORMAT;
    if (!length) {
        /* No clipboard format present */
        return S_OK;
    }
    if (length == -1)
    {
        DWORD cf;
        hr = FUNC3(stream, &cf, sizeof(cf), &read);
        if (hr != S_OK || read != sizeof(cf))
            return DV_E_CLIPFORMAT;
        *clipformat = cf;
    }
    else
    {
        char *format_name = FUNC1(FUNC0(), 0, length);
        if (!format_name)
            return E_OUTOFMEMORY;
        hr = FUNC3(stream, format_name, length, &read);
        if (hr != S_OK || read != length || format_name[length - 1] != '\0')
        {
            FUNC2(FUNC0(), 0, format_name);
            return DV_E_CLIPFORMAT;
        }
        *clipformat = FUNC4(format_name);
        FUNC2(FUNC0(), 0, format_name);
    }
    return S_OK;
}