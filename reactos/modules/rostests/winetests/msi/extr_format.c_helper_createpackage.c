
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;


 int CP_ACP ;
 int DeleteFileA (char const*) ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int MSIDBOPEN_CREATEDIRECT ;
 scalar_t__ MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseCommit (int ) ;
 scalar_t__ MsiGetSummaryInformationA (int ,int *,int,int *) ;
 scalar_t__ MsiOpenDatabaseW (int *,int ,int *) ;
 scalar_t__ MsiSummaryInfoPersist (int ) ;
 scalar_t__ MsiSummaryInfoSetPropertyA (int ,int,int ,int,int *,char*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int VT_I4 ;
 int VT_LPSTR ;
 int ok (int,char*,...) ;
 scalar_t__ package_from_db (int ,int *) ;

__attribute__((used)) static UINT helper_createpackage( const char *szName, MSIHANDLE *handle )
{
    MSIHANDLE hPackage, suminfo, hdb = 0;
    UINT res;
    WCHAR *nameW;
    int len;

    DeleteFileA(szName);

    len = MultiByteToWideChar( CP_ACP, 0, szName, -1, ((void*)0), 0 );
    if (!(nameW = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) )))
        return ERROR_OUTOFMEMORY;
    MultiByteToWideChar( CP_ACP, 0, szName, -1, nameW, len );


    res = MsiOpenDatabaseW( nameW, MSIDBOPEN_CREATEDIRECT, &hdb );
    HeapFree( GetProcessHeap(), 0, nameW );
    ok( res == ERROR_SUCCESS , "Failed to create database %u\n", res );
    if (res != ERROR_SUCCESS)
        return res;

    res = MsiDatabaseCommit( hdb );
    ok( res == ERROR_SUCCESS , "Failed to commit database %u\n", res );


    res = MsiGetSummaryInformationA(hdb, ((void*)0), 7, &suminfo);
    ok( res == ERROR_SUCCESS , "Failed to open summaryinfo\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo,2, VT_LPSTR, 0,((void*)0),
                        "Installation Database");
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo,3, VT_LPSTR, 0,((void*)0),
                        "Installation Database");
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo,4, VT_LPSTR, 0,((void*)0),
                        "Wine Hackers");
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo,7, VT_LPSTR, 0,((void*)0),
                    ";1033");
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo,9, VT_LPSTR, 0,((void*)0),
                    "{913B8D18-FBB6-4CAC-A239-C74C11E3FA74}");
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo, 14, VT_I4, 100, ((void*)0), ((void*)0));
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoSetPropertyA(suminfo, 15, VT_I4, 0, ((void*)0), ((void*)0));
    ok( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = MsiSummaryInfoPersist(suminfo);
    ok( res == ERROR_SUCCESS , "Failed to make summary info persist\n" );

    res = MsiCloseHandle( suminfo);
    ok( res == ERROR_SUCCESS , "Failed to close suminfo\n" );

    res = package_from_db( hdb, &hPackage );
    MsiCloseHandle(hdb);

    if (res != ERROR_SUCCESS)
        DeleteFileA( szName );
    else
        *handle = hPackage;

    return res;
}
