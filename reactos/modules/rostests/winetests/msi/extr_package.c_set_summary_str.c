
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int LPCSTR ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int ,int ,int ,int *,int ) ;
 int VT_LPSTR ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void set_summary_str(MSIHANDLE hdb, DWORD pid, LPCSTR value)
{
    MSIHANDLE summary;
    UINT r;

    r = MsiGetSummaryInformationA(hdb, ((void*)0), 1, &summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    r = MsiSummaryInfoSetPropertyA(summary, pid, VT_LPSTR, 0, ((void*)0), value);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = MsiSummaryInfoPersist(summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle(summary);
}
