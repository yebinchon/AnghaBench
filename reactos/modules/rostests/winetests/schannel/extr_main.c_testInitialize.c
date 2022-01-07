
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int * PSECPKG_USER_FUNCTION_TABLE ;
typedef int * PSECPKG_FUNCTION_TABLE ;
typedef int NTSTATUS ;


 int SECPKG_INTERFACE_VERSION ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,...) ;
 int pSpLsaModeInitialize (int,int*,int **,int*) ;
 int pSpUserModeInitialize (int,int*,int **,int*) ;

__attribute__((used)) static void testInitialize(void)
{
    PSECPKG_USER_FUNCTION_TABLE pUserTables, pUserTables2;
    PSECPKG_FUNCTION_TABLE pTables, pTables2;
    ULONG cTables = 0, cUserTables = 0, Version = 0;
    NTSTATUS status;





    status = pSpLsaModeInitialize(0, &Version, &pTables2, &cTables);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    ok(cTables == 2 ||
       broken(cTables == 1),
       "cTables: %d\n", cTables);
    ok(pTables2 != ((void*)0),"pTables: %p\n", pTables2);


    status = pSpLsaModeInitialize(0x10000, &Version, &pTables, &cTables);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    ok(cTables == 2 ||
       broken(cTables == 1),
       "cTables: %d\n", cTables);
    ok(pTables != ((void*)0), "pTables: %p\n", pTables);

    ok(pTables == pTables2, "pTables: %p, pTables2: %p\n", pTables, pTables2);

    status = pSpLsaModeInitialize(0x23456, &Version, &pTables, &cTables);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    ok(cTables == 2 ||
       broken(cTables == 1),
       "cTables: %d\n", cTables);
    ok(pTables != ((void*)0), "pTables: %p\n", pTables);
    ok(pTables == pTables2, "pTables: %p, pTables2: %p\n", pTables, pTables2);


    Version = 0xdead;
    cUserTables = 0xdead;
    pUserTables = ((void*)0);
    status = pSpUserModeInitialize(0, &Version, &pUserTables, &cUserTables);
    ok(status == STATUS_INVALID_PARAMETER, "status: 0x%x\n", status);
    ok(Version == 0xdead, "Version: 0x%x\n", Version);
    ok(cUserTables == 0xdead, "cTables: %d\n", cUserTables);
    ok(pUserTables == ((void*)0), "pUserTables: %p\n", pUserTables);

    status = pSpUserModeInitialize(0x20000, &Version, &pUserTables,
                                   &cUserTables);
    ok(status == STATUS_INVALID_PARAMETER, "status: 0x%x\n", status);
    ok(Version == 0xdead, "Version: 0x%x\n", Version);
    ok(cUserTables == 0xdead, "cTables: %d\n", cUserTables);
    ok(pUserTables == ((void*)0), "pUserTables: %p\n", pUserTables);


    status = pSpUserModeInitialize(SECPKG_INTERFACE_VERSION, &Version,
                                   &pUserTables, &cUserTables);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    ok(Version == SECPKG_INTERFACE_VERSION, "Version: 0x%x\n", Version);
    ok(cUserTables == 2 ||
       broken(cUserTables == 4),
       "cUserTables: %d\n", cUserTables);
    ok(pUserTables != ((void*)0), "pUserTables: %p\n", pUserTables);


    status = pSpUserModeInitialize(SECPKG_INTERFACE_VERSION, &Version,
                                   &pUserTables2, &cTables);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    ok(pUserTables == pUserTables2, "pUserTables: %p, pUserTables2: %p\n",
       pUserTables, pUserTables2);
}
