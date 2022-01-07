
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int (* GetInfo ) (TYPE_1__*) ;} ;
struct TYPE_8__ {int fCapabilities; int wVersion; int wRPCID; int cbMaxToken; } ;
typedef TYPE_1__ SecPkgInfoW ;
typedef TYPE_2__* PSECPKG_FUNCTION_TABLE ;
typedef int NTSTATUS ;


 int LSA_BASE_CAPS ;
 int SECPKG_FLAG_APPCONTAINER_PASSTHROUGH ;
 int SEC_E_UNSUPPORTED_FUNCTION ;
 int STATUS_SUCCESS ;
 scalar_t__ SUCCEEDED (int) ;
 TYPE_2__* getNextSecPkgTable (TYPE_2__*,int) ;
 int ok (int,char*,int) ;
 int pSpLsaModeInitialize (int ,int*,TYPE_2__**,int*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void testGetInfo(void)
{
    PSECPKG_FUNCTION_TABLE pTables;
    SecPkgInfoW PackageInfo;
    ULONG cTables, Version;
    NTSTATUS status;


    status = pSpLsaModeInitialize(0, &Version, &pTables, &cTables);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);




    status = pTables->GetInfo(&PackageInfo);
    ok(status == STATUS_SUCCESS, "status: 0x%x\n", status);
    ok(PackageInfo.fCapabilities == LSA_BASE_CAPS ||
       PackageInfo.fCapabilities == (LSA_BASE_CAPS|SECPKG_FLAG_APPCONTAINER_PASSTHROUGH),
       "fCapabilities: 0x%x\n", PackageInfo.fCapabilities);
    ok(PackageInfo.wVersion == 1, "wVersion: %d\n", PackageInfo.wVersion);
    ok(PackageInfo.wRPCID == 14, "wRPCID: %d\n", PackageInfo.wRPCID);
    ok(PackageInfo.cbMaxToken == 0x4000 ||
       PackageInfo.cbMaxToken == 0x6000,
       "cbMaxToken: 0x%x\n",
       PackageInfo.cbMaxToken);


    if (cTables == 1)
    {
        win_skip("Second package missing\n");
        return;
    }
    pTables = getNextSecPkgTable(pTables, Version);
    if (!pTables)
        return;
    if (!pTables->GetInfo)
    {
        win_skip("GetInfo function missing\n");
        return;
    }
    status = pTables->GetInfo(&PackageInfo);
    ok(SUCCEEDED(status) ||
       status == SEC_E_UNSUPPORTED_FUNCTION,
       "status: 0x%x\n", status);

    if (SUCCEEDED(status))
    {
        ok(PackageInfo.fCapabilities == LSA_BASE_CAPS ||
           PackageInfo.fCapabilities == (LSA_BASE_CAPS|SECPKG_FLAG_APPCONTAINER_PASSTHROUGH),
           "fCapabilities: 0x%x\n", PackageInfo.fCapabilities);
        ok(PackageInfo.wVersion == 1, "wVersion: %d\n", PackageInfo.wVersion);
        ok(PackageInfo.wRPCID == 14, "wRPCID: %d\n", PackageInfo.wRPCID);
        ok(PackageInfo.cbMaxToken == 0x4000 ||
           PackageInfo.cbMaxToken == 0x6000,
           "cbMaxToken: 0x%x\n",
           PackageInfo.cbMaxToken);
    }
}
