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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ MSIHANDLE ;
typedef  char* LPCSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int /*<<< orphan*/  MSIDBOPEN_READONLY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 char* msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    MSIHANDLE hdb = 0, rec;
    char file[MAX_PATH];
    char buf[MAX_PATH];
    DWORD size;
    LPCSTR query;
    UINT r;

    /* insert a file into the Binary table */
    r = FUNC4(msifileW, MSIDBOPEN_CREATE, &hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to open database\n" );

    query = "CREATE TABLE `Binary` ( `Name` CHAR(72) NOT NULL, `ID` INT NOT NULL, `Data` OBJECT  PRIMARY KEY `Name`, `ID`)";
    r = FUNC13( hdb, 0, query );
    FUNC12( r == ERROR_SUCCESS, "Cannot create Binary table: %d\n", r );

    FUNC8( "test.txt" );
    rec = FUNC2( 1 );
    r = FUNC7( rec, 1, "test.txt" );
    FUNC12( r == ERROR_SUCCESS, "Failed to add stream data to the record: %d\n", r);
    FUNC0( "test.txt" );

    /* try a name that exceeds maximum OLE stream name length */
    query = "INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'encryption.dll.CB4E6205_F99A_4C51_ADD4_184506EFAB87', 10000, ? )";
    r = FUNC13( hdb, rec, query );
    FUNC12( r == ERROR_SUCCESS, "Insert into Binary table failed: %d\n", r );

    r = FUNC1( rec );
    FUNC12( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    r = FUNC3( hdb );
    FUNC12( r == ERROR_FUNCTION_FAILED , "got %u\n", r );

    r = FUNC1( hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to close database\n" );

    r = FUNC4(msifileW, MSIDBOPEN_CREATE, &hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to open database\n" );

    query = "CREATE TABLE `Binary` ( `Name` CHAR(72) NOT NULL, `ID` INT NOT NULL, `Data` OBJECT  PRIMARY KEY `Name`, `ID`)";
    r = FUNC13( hdb, 0, query );
    FUNC12( r == ERROR_SUCCESS, "Cannot create Binary table: %d\n", r );

    FUNC8( "test.txt" );
    rec = FUNC2( 1 );
    r = FUNC7( rec, 1, "test.txt" );
    FUNC12( r == ERROR_SUCCESS, "Failed to add stream data to the record: %d\n", r );
    FUNC0( "test.txt" );

    query = "INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'filename1', 1, ? )";
    r = FUNC13( hdb, rec, query );
    FUNC12( r == ERROR_SUCCESS, "Insert into Binary table failed: %d\n", r );

    query = "INSERT INTO `Binary` ( `Name`, `ID`, `Data` ) VALUES ( 'filename1', 1, ? )";
    r = FUNC13( hdb, rec, query );
    FUNC12( r == ERROR_FUNCTION_FAILED, "got %u\n", r );

    r = FUNC1( rec );
    FUNC12( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    r = FUNC3( hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to commit database\n" );

    r = FUNC1( hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to close database\n" );

    /* read file from the Stream table */
    r = FUNC4( msifileW, MSIDBOPEN_READONLY, &hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to open database\n" );

    query = "SELECT * FROM `_Streams`";
    r = FUNC9( hdb, query, &rec );
    FUNC12( r == ERROR_SUCCESS, "SELECT query failed: %d\n", r );

    size = MAX_PATH;
    r = FUNC5( rec, 1, file, &size );
    FUNC12( r == ERROR_SUCCESS, "Failed to get string: %d\n", r );
    FUNC12( !FUNC10(file, "Binary.filename1.1"), "Expected 'Binary.filename1.1', got %s\n", file );

    size = MAX_PATH;
    FUNC11( buf, 0, MAX_PATH );
    r = FUNC6( rec, 2, buf, &size );
    FUNC12( r == ERROR_SUCCESS, "Failed to get stream: %d\n", r );
    FUNC12( !FUNC10(buf, "test.txt\n"), "Expected 'test.txt\\n', got %s\n", buf );

    r = FUNC1( rec );
    FUNC12( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    /* read file from the Binary table */
    query = "SELECT * FROM `Binary`";
    r = FUNC9( hdb, query, &rec );
    FUNC12( r == ERROR_SUCCESS, "SELECT query failed: %d\n", r );

    size = MAX_PATH;
    r = FUNC5( rec, 1, file, &size );
    FUNC12( r == ERROR_SUCCESS, "Failed to get string: %d\n", r );
    FUNC12( !FUNC10(file, "filename1"), "Expected 'filename1', got %s\n", file );

    size = MAX_PATH;
    FUNC11( buf, 0, MAX_PATH );
    r = FUNC6( rec, 3, buf, &size );
    FUNC12( r == ERROR_SUCCESS, "Failed to get stream: %d\n", r );
    FUNC12( !FUNC10(buf, "test.txt\n"), "Expected 'test.txt\\n', got %s\n", buf );

    r = FUNC1( rec );
    FUNC12( r == ERROR_SUCCESS , "Failed to close record handle\n" );

    r = FUNC1( hdb );
    FUNC12( r == ERROR_SUCCESS , "Failed to close database\n" );

    FUNC0( msifile );
}