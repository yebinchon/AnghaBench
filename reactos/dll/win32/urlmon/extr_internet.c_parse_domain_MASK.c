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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IInternetProtocolInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PARSE_DOMAIN ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  URL_PART_HOSTNAME ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC8(LPCWSTR url, DWORD flags, LPWSTR result,
        DWORD size, DWORD *rsize)
{
    IInternetProtocolInfo *protocol_info;
    HRESULT hres;

    FUNC4("(%s %08x %p %d %p)\n", FUNC6(url), flags, result, size, rsize);

    protocol_info = FUNC7(url);

    if(protocol_info) {
        hres = FUNC1(protocol_info, url, PARSE_DOMAIN,
                flags, result, size, rsize, 0);
        FUNC2(protocol_info);
        if(FUNC3(hres))
            return hres;
    }

    hres = FUNC5(url, result, &size, URL_PART_HOSTNAME, flags);
    if(rsize)
        *rsize = size;

    if(hres == E_POINTER)
        return S_FALSE;

    if(FUNC0(hres))
        return E_FAIL;
    return S_OK;
}