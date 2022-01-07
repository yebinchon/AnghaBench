
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int MAX_PATH ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseOpenViewA (int ,char*,int *) ;
 scalar_t__ MsiRecordGetStringA (int ,int,int *,int*) ;
 int MsiViewClose (int ) ;
 scalar_t__ MsiViewExecute (int ,int ) ;
 scalar_t__ MsiViewFetch (int ,int *) ;
 scalar_t__ TRUE ;
 int lstrcmpA (int *,int ) ;
 int lstrlenA (int ) ;
 int memcmp (int *,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static BOOL find_prop_in_property(MSIHANDLE hdb, LPCSTR prop, LPCSTR val, int len)
{
    MSIHANDLE hview, hrec;
    BOOL found = FALSE;
    CHAR buffer[MAX_PATH];
    DWORD sz;
    UINT r;

    r = MsiDatabaseOpenViewA(hdb, "SELECT * FROM `_Property`", &hview);
    ok(r == ERROR_SUCCESS, "MsiDatabaseOpenView failed\n");
    r = MsiViewExecute(hview, 0);
    ok(r == ERROR_SUCCESS, "MsiViewExecute failed\n");

    if (len < 0) len = lstrlenA(val);

    while (r == ERROR_SUCCESS && !found)
    {
        r = MsiViewFetch(hview, &hrec);
        if (r != ERROR_SUCCESS) break;

        sz = MAX_PATH;
        r = MsiRecordGetStringA(hrec, 1, buffer, &sz);
        if (r == ERROR_SUCCESS && !lstrcmpA(buffer, prop))
        {
            sz = MAX_PATH;
            r = MsiRecordGetStringA(hrec, 2, buffer, &sz);
            if (r == ERROR_SUCCESS && !memcmp(buffer, val, len) && !buffer[len])
            {
                ok(sz == len, "wrong size %u\n", sz);
                found = TRUE;
            }
        }

        MsiCloseHandle(hrec);
    }
    MsiViewClose(hview);
    MsiCloseHandle(hview);
    return found;
}
