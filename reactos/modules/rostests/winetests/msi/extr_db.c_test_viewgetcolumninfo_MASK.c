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
typedef  int MSIHANDLE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSICOLINFO_NAMES ; 
 int /*<<< orphan*/  MSICOLINFO_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,char*) ; 
 int FUNC2 () ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    MSIHANDLE hdb = 0, rec;
    UINT r;

    hdb = FUNC2();
    FUNC5( hdb, "failed to create db\n");

    r = FUNC6( hdb, 0,
            "CREATE TABLE `Properties` "
            "( `Property` CHAR(255), "
            "  `Value` CHAR(1), "
            "  `Intvalue` INT, "
            "  `Integervalue` INTEGER, "
            "  `Shortvalue` SHORT, "
            "  `Longvalue` LONG, "
            "  `Longcharvalue` LONGCHAR, "
            "  `Charvalue` CHAR, "
            "  `Localizablevalue` CHAR LOCALIZABLE "
            "  PRIMARY KEY `Property`)" );
    FUNC5( r == ERROR_SUCCESS , "Failed to create table\n" );

    /* check the column types */
    rec = FUNC3( hdb, "select * from `Properties`", MSICOLINFO_TYPES );
    FUNC5( rec, "failed to get column info record\n" );

    FUNC5( FUNC1( rec, 1, "S255"), "wrong record type\n");
    FUNC5( FUNC1( rec, 2, "S1"), "wrong record type\n");
    FUNC5( FUNC1( rec, 3, "I2"), "wrong record type\n");
    FUNC5( FUNC1( rec, 4, "I2"), "wrong record type\n");
    FUNC5( FUNC1( rec, 5, "I2"), "wrong record type\n");
    FUNC5( FUNC1( rec, 6, "I4"), "wrong record type\n");
    FUNC5( FUNC1( rec, 7, "S0"), "wrong record type\n");
    FUNC5( FUNC1( rec, 8, "S0"), "wrong record type\n");
    FUNC5( FUNC1( rec, 9, "L0"), "wrong record type\n");

    FUNC0( rec );

    /* check the type in _Columns */
    FUNC5( 0x3dff == FUNC4(hdb, "Properties", 1 ), "_columns table wrong\n");
    FUNC5( 0x1d01 == FUNC4(hdb, "Properties", 2 ), "_columns table wrong\n");
    FUNC5( 0x1502 == FUNC4(hdb, "Properties", 3 ), "_columns table wrong\n");
    FUNC5( 0x1502 == FUNC4(hdb, "Properties", 4 ), "_columns table wrong\n");
    FUNC5( 0x1502 == FUNC4(hdb, "Properties", 5 ), "_columns table wrong\n");
    FUNC5( 0x1104 == FUNC4(hdb, "Properties", 6 ), "_columns table wrong\n");
    FUNC5( 0x1d00 == FUNC4(hdb, "Properties", 7 ), "_columns table wrong\n");
    FUNC5( 0x1d00 == FUNC4(hdb, "Properties", 8 ), "_columns table wrong\n");
    FUNC5( 0x1f00 == FUNC4(hdb, "Properties", 9 ), "_columns table wrong\n");

    /* now try the names */
    rec = FUNC3( hdb, "select * from `Properties`", MSICOLINFO_NAMES );
    FUNC5( rec, "failed to get column info record\n" );

    FUNC5( FUNC1( rec, 1, "Property"), "wrong record type\n");
    FUNC5( FUNC1( rec, 2, "Value"), "wrong record type\n");
    FUNC5( FUNC1( rec, 3, "Intvalue"), "wrong record type\n");
    FUNC5( FUNC1( rec, 4, "Integervalue"), "wrong record type\n");
    FUNC5( FUNC1( rec, 5, "Shortvalue"), "wrong record type\n");
    FUNC5( FUNC1( rec, 6, "Longvalue"), "wrong record type\n");
    FUNC5( FUNC1( rec, 7, "Longcharvalue"), "wrong record type\n");
    FUNC5( FUNC1( rec, 8, "Charvalue"), "wrong record type\n");
    FUNC5( FUNC1( rec, 9, "Localizablevalue"), "wrong record type\n");

    FUNC0( rec );

    r = FUNC6( hdb, 0,
            "CREATE TABLE `Binary` "
            "( `Name` CHAR(255), `Data` OBJECT  PRIMARY KEY `Name`)" );
    FUNC5( r == ERROR_SUCCESS , "Failed to create table\n" );

    /* check the column types */
    rec = FUNC3( hdb, "select * from `Binary`", MSICOLINFO_TYPES );
    FUNC5( rec, "failed to get column info record\n" );

    FUNC5( FUNC1( rec, 1, "S255"), "wrong record type\n");
    FUNC5( FUNC1( rec, 2, "V0"), "wrong record type\n");

    FUNC0( rec );

    /* check the type in _Columns */
    FUNC5( 0x3dff == FUNC4(hdb, "Binary", 1 ), "_columns table wrong\n");
    FUNC5( 0x1900 == FUNC4(hdb, "Binary", 2 ), "_columns table wrong\n");

    /* now try the names */
    rec = FUNC3( hdb, "select * from `Binary`", MSICOLINFO_NAMES );
    FUNC5( rec, "failed to get column info record\n" );

    FUNC5( FUNC1( rec, 1, "Name"), "wrong record type\n");
    FUNC5( FUNC1( rec, 2, "Data"), "wrong record type\n");
    FUNC0( rec );

    r = FUNC6( hdb, 0,
            "CREATE TABLE `UIText` "
            "( `Key` CHAR(72) NOT NULL, `Text` CHAR(255) LOCALIZABLE PRIMARY KEY `Key`)" );
    FUNC5( r == ERROR_SUCCESS , "Failed to create table\n" );

    FUNC5( 0x2d48 == FUNC4(hdb, "UIText", 1 ), "_columns table wrong\n");
    FUNC5( 0x1fff == FUNC4(hdb, "UIText", 2 ), "_columns table wrong\n");

    rec = FUNC3( hdb, "select * from `UIText`", MSICOLINFO_NAMES );
    FUNC5( rec, "failed to get column info record\n" );
    FUNC5( FUNC1( rec, 1, "Key"), "wrong record type\n");
    FUNC5( FUNC1( rec, 2, "Text"), "wrong record type\n");
    FUNC0( rec );

    rec = FUNC3( hdb, "select * from `UIText`", MSICOLINFO_TYPES );
    FUNC5( rec, "failed to get column info record\n" );
    FUNC5( FUNC1( rec, 1, "s72"), "wrong record type\n");
    FUNC5( FUNC1( rec, 2, "L255"), "wrong record type\n");
    FUNC0( rec );

    FUNC0( hdb );
}