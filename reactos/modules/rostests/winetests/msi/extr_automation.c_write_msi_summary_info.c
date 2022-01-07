
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szValue; int pftValue; int iValue; int datatype; int property; } ;
typedef TYPE_1__ msi_summary_info ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int ,int ,int ,int ,int ) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void write_msi_summary_info(MSIHANDLE db, const msi_summary_info *info, int num_info)
{
    MSIHANDLE summary;
    UINT r;
    int j;

    r = MsiGetSummaryInformationA(db, ((void*)0), num_info, &summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);


    for (j = 0; j < num_info; j++)
    {
        const msi_summary_info *entry = &info[j];

        r = MsiSummaryInfoSetPropertyA(summary, entry->property, entry->datatype,
                                       entry->iValue, entry->pftValue, entry->szValue);
        ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);
    }


    r = MsiSummaryInfoPersist(summary);
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r);

    MsiCloseHandle(summary);
}
