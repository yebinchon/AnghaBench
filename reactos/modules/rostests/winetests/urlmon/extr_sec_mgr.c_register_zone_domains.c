
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* domain; char* subdomain; char* scheme; int zone; } ;
typedef TYPE_1__ zone_domain_mapping ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char*,int *) ;
 scalar_t__ RegOpenKeyA (int ,int ,int *) ;
 scalar_t__ RegSetValueExA (int ,char*,int ,int ,int *,int) ;
 int TRUE ;
 scalar_t__ URLZONE_CUSTOM ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__,...) ;
 int skip (char*) ;
 int szZoneMapDomainsKey ;
 TYPE_1__* zone_domain_mappings ;

__attribute__((used)) static BOOL register_zone_domains(void)
{
    HKEY domains;
    DWORD res, i;


    res = RegOpenKeyA(HKEY_LOCAL_MACHINE, szZoneMapDomainsKey, &domains);
    ok(res == ERROR_SUCCESS || broken(res == ERROR_FILE_NOT_FOUND), "RegOpenKey failed: %d\n", res);
    if(res == ERROR_SUCCESS) {
        HKEY domain;
        DWORD zone = URLZONE_CUSTOM;

        res = RegCreateKeyA(domains, "local.machine", &domain);
        if (res == ERROR_ACCESS_DENIED)
        {
            skip("need admin rights\n");
            RegCloseKey(domains);
            return FALSE;
        }
        ok(res == ERROR_SUCCESS, "RegCreateKey failed: %d\n", res);

        res = RegSetValueExA(domain, "http", 0, REG_DWORD, (BYTE*)&zone, sizeof(DWORD));
        ok(res == ERROR_SUCCESS, "RegSetValueEx failed: %d\n", res);

        RegCloseKey(domain);
        RegCloseKey(domains);
    }

    res = RegOpenKeyA(HKEY_CURRENT_USER, szZoneMapDomainsKey, &domains);
    ok(res == ERROR_SUCCESS, "RegOpenKey failed: %d\n", res);

    for(i = 0; i < ARRAY_SIZE(zone_domain_mappings); ++i) {
        const zone_domain_mapping *test = zone_domain_mappings+i;
        HKEY domain;

        res = RegCreateKeyA(domains, test->domain, &domain);
        ok(res == ERROR_SUCCESS, "RegCreateKey failed with %d on test %d\n", res, i);


        if(!test->subdomain) {
            res = RegSetValueExA(domain, test->scheme, 0, REG_DWORD, (BYTE*)&test->zone, sizeof(DWORD));
            ok(res == ERROR_SUCCESS, "RegSetValueEx failed with %d on test %d\n", res, i);
        } else {
            HKEY subdomain;

            res = RegCreateKeyA(domain, test->subdomain, &subdomain);
            ok(res == ERROR_SUCCESS, "RegCreateKey failed with %d on test %d\n", res, i);

            res = RegSetValueExA(subdomain, test->scheme, 0, REG_DWORD, (BYTE*)&test->zone, sizeof(DWORD));
            ok(res == ERROR_SUCCESS, "RegSetValueEx failed with %d on test %d\n", res, i);

            RegCloseKey(subdomain);
        }

        RegCloseKey(domain);
    }

    RegCloseKey(domains);
    return TRUE;
}
