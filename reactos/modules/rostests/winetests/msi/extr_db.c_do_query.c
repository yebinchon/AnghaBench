
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ MSIHANDLE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MsiCloseHandle (scalar_t__) ;
 scalar_t__ MsiDatabaseOpenViewA (scalar_t__,char const*,scalar_t__*) ;
 scalar_t__ MsiViewClose (scalar_t__) ;
 scalar_t__ MsiViewExecute (scalar_t__,int ) ;
 scalar_t__ MsiViewFetch (scalar_t__,scalar_t__*) ;

__attribute__((used)) static UINT do_query(MSIHANDLE hdb, const char *query, MSIHANDLE *phrec)
{
    MSIHANDLE hview = 0;
    UINT r, ret;

    if (phrec)
        *phrec = 0;


    r = MsiDatabaseOpenViewA(hdb, query, &hview);
    if (r != ERROR_SUCCESS)
        return r;
    r = MsiViewExecute(hview, 0);
    if (r != ERROR_SUCCESS)
        return r;
    ret = MsiViewFetch(hview, phrec);
    r = MsiViewClose(hview);
    if (r != ERROR_SUCCESS)
        return r;
    r = MsiCloseHandle(hview);
    if (r != ERROR_SUCCESS)
        return r;
    return ret;
}
