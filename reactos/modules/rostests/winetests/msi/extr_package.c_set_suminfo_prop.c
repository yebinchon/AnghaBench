
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int ,int ,int ,int *,int *) ;
 int VT_I4 ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void set_suminfo_prop(MSIHANDLE db, DWORD prop, DWORD val)
{
    MSIHANDLE summary;
    UINT r;

    r = MsiGetSummaryInformationA(db, ((void*)0), 1, &summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiSummaryInfoSetPropertyA(summary, prop, VT_I4, val, ((void*)0), ((void*)0));
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiSummaryInfoPersist(summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle(summary);
}
