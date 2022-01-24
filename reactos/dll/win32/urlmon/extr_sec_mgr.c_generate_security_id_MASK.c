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
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOT_SUFFICIENT_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ URLZONE_INVALID ; 
 scalar_t__ URL_SCHEME_WILDCARD ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC8(IUri *uri, BYTE *secid, DWORD *secid_len, DWORD zone)
{
    DWORD len;
    HRESULT hres;
    DWORD scheme_type;

    if(zone == URLZONE_INVALID)
        return E_INVALIDARG;

    hres = FUNC3(uri, &scheme_type);
    if(FUNC0(hres))
        return hres;

    /* Windows handles opaque URLs differently then hierarchical ones. */
    if(!FUNC7(scheme_type) && scheme_type != URL_SCHEME_WILDCARD) {
        BSTR display_uri;

        hres = FUNC1(uri, &display_uri);
        if(FUNC0(hres))
            return hres;

        len = FUNC6(CP_ACP, 0, display_uri, -1, NULL, 0, NULL, NULL)-1;

        if(len+sizeof(DWORD) > *secid_len) {
            FUNC5(display_uri);
            return E_NOT_SUFFICIENT_BUFFER;
        }

        FUNC6(CP_ACP, 0, display_uri, -1, (LPSTR)secid, len, NULL, NULL);
        FUNC5(display_uri);

        *(DWORD*)(secid+len) = zone;
    } else {
        BSTR host, scheme;
        DWORD host_len, scheme_len;
        BYTE *ptr;

        hres = FUNC2(uri, &host);
        if(FUNC0(hres))
            return hres;

        /* The host can't be empty for Wildcard URIs. */
        if(scheme_type == URL_SCHEME_WILDCARD && !*host) {
            FUNC5(host);
            return E_INVALIDARG;
        }

        hres = FUNC4(uri, &scheme);
        if(FUNC0(hres)) {
            FUNC5(host);
            return hres;
        }

        host_len = FUNC6(CP_ACP, 0, host, -1, NULL, 0, NULL, NULL)-1;
        scheme_len = FUNC6(CP_ACP, 0, scheme, -1, NULL, 0, NULL, NULL)-1;

        len = host_len+scheme_len+sizeof(BYTE);

        if(len+sizeof(DWORD) > *secid_len) {
            FUNC5(host);
            FUNC5(scheme);
            return E_NOT_SUFFICIENT_BUFFER;
        }

        FUNC6(CP_ACP, 0, scheme, -1, (LPSTR)secid, len, NULL, NULL);
        FUNC5(scheme);

        ptr = secid+scheme_len;
        *ptr++ = ':';

        FUNC6(CP_ACP, 0, host, -1, (LPSTR)ptr, host_len, NULL, NULL);
        FUNC5(host);

        ptr += host_len;

        *(DWORD*)ptr = zone;
    }

    *secid_len = len+sizeof(DWORD);

    return S_OK;
}