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
struct TYPE_4__ {char* subdomain; char* domain; } ;
typedef  TYPE_1__ zone_domain_mapping ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 char* szZoneMapDomainsKey ; 
 TYPE_1__* zone_domain_mappings ; 

__attribute__((used)) static void FUNC6(void)
{
    HKEY domains;
    DWORD res, i;

    res = FUNC3(HKEY_LOCAL_MACHINE, szZoneMapDomainsKey, &domains);
    FUNC5(res == ERROR_SUCCESS || FUNC4(res == ERROR_FILE_NOT_FOUND), "RegOpenKey failed: %d\n", res);
    if(res == ERROR_SUCCESS) {
        FUNC2(domains, "local.machine");
        FUNC1(domains);
    }

    res = FUNC3(HKEY_CURRENT_USER, szZoneMapDomainsKey, &domains);
    FUNC5(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    for(i = 0; i < FUNC0(zone_domain_mappings); ++i) {
        const zone_domain_mapping *test = zone_domain_mappings+i;

        /* FIXME: Uses the "cludge" approach to remove the test data from the registry!
         *        Although, if domain names are... unique, this shouldn't cause any harm
         *        to keys (if any) that existed before the tests.
         */
        if(test->subdomain) {
            HKEY domain;

            res = FUNC3(domains, test->domain, &domain);
            if(res == ERROR_SUCCESS) {
                FUNC2(domain, test->subdomain);
                FUNC1(domain);
            }
        }
        FUNC2(domains, test->domain);
    }

    FUNC1(domains);
}