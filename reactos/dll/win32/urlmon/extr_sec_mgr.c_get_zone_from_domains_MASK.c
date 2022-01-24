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
typedef  int /*<<< orphan*/  IUri ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ URLZONE_INVALID ; 
 scalar_t__ URL_SCHEME_FILE ; 
 scalar_t__ URL_SCHEME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  wszZoneMapDomainsKey ; 

__attribute__((used)) static HRESULT FUNC12(IUri *uri, DWORD *zone)
{
    HRESULT hres;
    BSTR host, scheme;
    DWORD res;
    HKEY domains;
    DWORD scheme_type;

    hres = FUNC2(uri, &scheme_type);
    if(FUNC0(hres))
        return hres;

    /* Windows doesn't play nice with unknown scheme types when it tries
     * to check if a host name maps into any domains.
     */
    if(scheme_type == URL_SCHEME_UNKNOWN)
        return S_FALSE;

    hres = FUNC1(uri, &host);
    if(FUNC0(hres))
        return hres;

    /* Known hierarchical scheme types must have a host. If they don't Windows
     * assigns URLZONE_INVALID to the zone.
     */
    if((scheme_type != URL_SCHEME_UNKNOWN && scheme_type != URL_SCHEME_FILE)
        && FUNC10(scheme_type) && !*host) {
        *zone = URLZONE_INVALID;

        FUNC6(host);

        /* The MapUrlToZone functions return S_OK when this condition occurs. */
        return S_OK;
    }

    hres = FUNC3(uri, &scheme);
    if(FUNC0(hres)) {
        FUNC6(host);
        return hres;
    }

    /* First try CURRENT_USER. */
    res = FUNC5(HKEY_CURRENT_USER, wszZoneMapDomainsKey, &domains);
    if(res == ERROR_SUCCESS) {
        hres = FUNC11(domains, scheme, host, FUNC7(host), zone);
        FUNC4(domains);
    } else
        FUNC8("Failed to open HKCU's %s key\n", FUNC9(wszZoneMapDomainsKey));

    /* If that doesn't work try LOCAL_MACHINE. */
    if(hres == S_FALSE) {
        res = FUNC5(HKEY_LOCAL_MACHINE, wszZoneMapDomainsKey, &domains);
        if(res == ERROR_SUCCESS) {
            hres = FUNC11(domains, scheme, host, FUNC7(host), zone);
            FUNC4(domains);
        } else
            FUNC8("Failed to open HKLM's %s key\n", FUNC9(wszZoneMapDomainsKey));
    }

    FUNC6(host);
    FUNC6(scheme);
    return hres;
}