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
struct TYPE_4__ {char* domain; char* subdomain; char* scheme; int /*<<< orphan*/  zone; } ;
typedef  TYPE_1__ zone_domain_mapping ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ URLZONE_CUSTOM ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  szZoneMapDomainsKey ; 
 TYPE_1__* zone_domain_mappings ; 

__attribute__((used)) static BOOL FUNC8(void)
{
    HKEY domains;
    DWORD res, i;

    /* Some Windows versions don't seem to have a "Domains" key in their HKLM. */
    res = FUNC3(HKEY_LOCAL_MACHINE, szZoneMapDomainsKey, &domains);
    FUNC6(res == ERROR_SUCCESS || FUNC5(res == ERROR_FILE_NOT_FOUND), "RegOpenKey failed: %d\n", res);
    if(res == ERROR_SUCCESS) {
        HKEY domain;
        DWORD zone = URLZONE_CUSTOM;

        res = FUNC2(domains, "local.machine", &domain);
        if (res == ERROR_ACCESS_DENIED)
        {
            FUNC7("need admin rights\n");
            FUNC1(domains);
            return FALSE;
        }
        FUNC6(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);

        res = FUNC4(domain, "http", 0, REG_DWORD, (BYTE*)&zone, sizeof(DWORD));
        FUNC6(res == ERROR_SUCCESS, "RegSetValueEx failed: %d\n", res);

        FUNC1(domain);
        FUNC1(domains);
    }

    res = FUNC3(HKEY_CURRENT_USER, szZoneMapDomainsKey, &domains);
    FUNC6(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    for(i = 0; i < FUNC0(zone_domain_mappings); ++i) {
        const zone_domain_mapping *test = zone_domain_mappings+i;
        HKEY domain;

        res = FUNC2(domains, test->domain, &domain);
        FUNC6(res == ERROR_SUCCESS, "RegCreateKey failed with %d on test %d\n", res, i);

        /* Only set the value if there's no subdomain. */
        if(!test->subdomain) {
            res = FUNC4(domain, test->scheme, 0, REG_DWORD, (BYTE*)&test->zone, sizeof(DWORD));
            FUNC6(res == ERROR_SUCCESS, "RegSetValueEx failed with %d on test %d\n", res, i);
        } else {
            HKEY subdomain;

            res = FUNC2(domain, test->subdomain, &subdomain);
            FUNC6(res == ERROR_SUCCESS, "RegCreateKey failed with %d on test %d\n", res, i);

            res = FUNC4(subdomain, test->scheme, 0, REG_DWORD, (BYTE*)&test->zone, sizeof(DWORD));
            FUNC6(res == ERROR_SUCCESS, "RegSetValueEx failed with %d on test %d\n", res, i);

            FUNC1(subdomain);
        }

        FUNC1(domain);
    }

    FUNC1(domains);
    return TRUE;
}