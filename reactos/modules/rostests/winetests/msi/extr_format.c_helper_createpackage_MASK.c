#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATEDIRECT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  VT_I4 ; 
 int /*<<< orphan*/  VT_LPSTR ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC13( const char *szName, MSIHANDLE *handle )
{
    MSIHANDLE hPackage, suminfo, hdb = 0;
    UINT res;
    WCHAR *nameW;
    int len;

    FUNC0(szName);

    len = FUNC10( CP_ACP, 0, szName, -1, NULL, 0 );
    if (!(nameW = FUNC2( FUNC1(), 0, len * sizeof(WCHAR) )))
        return ERROR_OUTOFMEMORY;
    FUNC10( CP_ACP, 0, szName, -1, nameW, len );

    /* create an empty database */
    res = FUNC7( nameW, MSIDBOPEN_CREATEDIRECT, &hdb );
    FUNC3( FUNC1(), 0, nameW );
    FUNC11( res == ERROR_SUCCESS , "Failed to create database %u\n", res );
    if (res != ERROR_SUCCESS)
        return res;

    res = FUNC5( hdb );
    FUNC11( res == ERROR_SUCCESS , "Failed to commit database %u\n", res );

    /* build summary info */
    res = FUNC6(hdb, NULL, 7, &suminfo);
    FUNC11( res == ERROR_SUCCESS , "Failed to open summaryinfo\n" );

    res = FUNC9(suminfo,2, VT_LPSTR, 0,NULL,
                        "Installation Database");
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC9(suminfo,3, VT_LPSTR, 0,NULL,
                        "Installation Database");
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC9(suminfo,4, VT_LPSTR, 0,NULL,
                        "Wine Hackers");
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC9(suminfo,7, VT_LPSTR, 0,NULL,
                    ";1033");
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC9(suminfo,9, VT_LPSTR, 0,NULL,
                    "{913B8D18-FBB6-4CAC-A239-C74C11E3FA74}");
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC9(suminfo, 14, VT_I4, 100, NULL, NULL);
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC9(suminfo, 15, VT_I4, 0, NULL, NULL);
    FUNC11( res == ERROR_SUCCESS , "Failed to set summary info\n" );

    res = FUNC8(suminfo);
    FUNC11( res == ERROR_SUCCESS , "Failed to make summary info persist\n" );

    res = FUNC4( suminfo);
    FUNC11( res == ERROR_SUCCESS , "Failed to close suminfo\n" );

    res = FUNC12( hdb, &hPackage );
    FUNC4(hdb);

    if (res != ERROR_SUCCESS)
        FUNC0( szName );
    else
        *handle = hPackage;

    return res;
}