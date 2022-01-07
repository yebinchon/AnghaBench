
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int LPSTR ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MsiCloseHandle (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int,int ,int,int *,char*) ;
 int PID_REVNUMBER ;
 int VT_I4 ;
 int VT_LPSTR ;
 int ok (int,char*) ;

__attribute__((used)) static UINT set_summary_info(MSIHANDLE hdb, LPSTR prodcode)
{
    UINT res;
    MSIHANDLE suminfo;


    res = MsiGetSummaryInformationA(hdb, ((void*)0), 7, &suminfo);
    ok(res == ERROR_SUCCESS, "Failed to open summaryinfo\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, 2, VT_LPSTR, 0, ((void*)0),
                                    "Installation Database");
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, 3, VT_LPSTR, 0, ((void*)0),
                                    "Installation Database");
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, 4, VT_LPSTR, 0, ((void*)0),
                                    "Wine Hackers");
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, 7, VT_LPSTR, 0, ((void*)0),
                                    ";1033");
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, PID_REVNUMBER, VT_LPSTR, 0, ((void*)0),
                                    "{A2078D65-94D6-4205-8DEE-F68D6FD622AA}");
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, 14, VT_I4, 100, ((void*)0), ((void*)0));
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoSetPropertyA(suminfo, 15, VT_I4, 0, ((void*)0), ((void*)0));
    ok(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = MsiSummaryInfoPersist(suminfo);
    ok(res == ERROR_SUCCESS, "Failed to make summary info persist\n");

    res = MsiCloseHandle(suminfo);
    ok(res == ERROR_SUCCESS, "Failed to close suminfo\n");

    return res;
}
