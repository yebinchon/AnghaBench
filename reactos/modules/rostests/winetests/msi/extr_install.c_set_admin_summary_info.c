
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MSIDBOPEN_DIRECT ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiOpenDatabaseW (int const*,int ,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int ,int ,int,int *,int *) ;
 int PID_WORDCOUNT ;
 int VT_I4 ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void set_admin_summary_info(const WCHAR *name)
{
    MSIHANDLE db, summary;
    UINT r;

    r = MsiOpenDatabaseW(name, MSIDBOPEN_DIRECT, &db);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = MsiGetSummaryInformationA(db, ((void*)0), 1, &summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    r = MsiSummaryInfoSetPropertyA(summary, PID_WORDCOUNT, VT_I4, 5, ((void*)0), ((void*)0));
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);


    r = MsiSummaryInfoPersist(summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle(summary);

    r = MsiDatabaseCommit(db);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle(db);
}
