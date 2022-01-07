
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char const*,int *) ;
 scalar_t__ MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;

__attribute__((used)) static UINT run_query(MSIHANDLE hdb, const char *query)
{
    MSIHANDLE hview = 0;
    UINT r;

    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    if (r != ERROR_SUCCESS)
        return r;

    r = MsiViewExecute(hview, 0);
    if (r == ERROR_SUCCESS)
        r = MsiViewClose(hview);
    MsiCloseHandle(hview);
    return r;
}
