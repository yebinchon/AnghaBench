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
typedef  scalar_t__ UINT ;
typedef  scalar_t__ MSIHANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int MSICOLINFO_NAMES ; 
 int MSICOLINFO_TYPES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int,char*,int*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int,scalar_t__*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    MSIHANDLE hdb, hview = 0, rec = 0;
    UINT r;
    DWORD sz;
    char buffer[0x20];

    /* create an empty db */
    hdb = FUNC6();
    FUNC7( hdb, "failed to create db\n");

    /* tables should be present */
    r = FUNC1(hdb, "select * from _Tables", &hview);
    FUNC7( r == ERROR_SUCCESS, "failed to open query\n");

    r = FUNC4(hview, 0);
    FUNC7( r == ERROR_SUCCESS, "failed to execute query\n");

    /* check that NAMES works */
    rec = 0;
    r = FUNC5( hview, MSICOLINFO_NAMES, &rec );
    FUNC7( r == ERROR_SUCCESS, "failed to get names\n");
    sz = sizeof buffer;
    r = FUNC2(rec, 1, buffer, &sz );
    FUNC7( r == ERROR_SUCCESS, "failed to get string\n");
    FUNC7( !FUNC8(buffer,"Name"), "_Tables has wrong column name\n");
    r = FUNC0( rec );
    FUNC7( r == ERROR_SUCCESS, "failed to close record handle\n");

    /* check that TYPES works */
    rec = 0;
    r = FUNC5( hview, MSICOLINFO_TYPES, &rec );
    FUNC7( r == ERROR_SUCCESS, "failed to get names\n");
    sz = sizeof buffer;
    r = FUNC2(rec, 1, buffer, &sz );
    FUNC7( r == ERROR_SUCCESS, "failed to get string\n");
    FUNC7( !FUNC8(buffer,"s64"), "_Tables has wrong column type\n");
    r = FUNC0( rec );
    FUNC7( r == ERROR_SUCCESS, "failed to close record handle\n");

    /* check that invalid values fail */
    rec = 0;
    r = FUNC5( hview, 100, &rec );
    FUNC7( r == ERROR_INVALID_PARAMETER, "wrong error code\n");
    FUNC7( rec == 0, "returned a record\n");

    r = FUNC5( hview, MSICOLINFO_TYPES, NULL );
    FUNC7( r == ERROR_INVALID_PARAMETER, "wrong error code\n");

    r = FUNC5( 0, MSICOLINFO_TYPES, &rec );
    FUNC7( r == ERROR_INVALID_HANDLE, "wrong error code\n");

    r = FUNC3(hview);
    FUNC7( r == ERROR_SUCCESS, "failed to close view\n");
    r = FUNC0(hview);
    FUNC7( r == ERROR_SUCCESS, "failed to close view handle\n");
    r = FUNC0(hdb);
    FUNC7( r == ERROR_SUCCESS, "failed to close database\n");
}