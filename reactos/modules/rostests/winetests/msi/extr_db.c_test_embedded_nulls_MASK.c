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
typedef  int /*<<< orphan*/  control_table ;
typedef  int /*<<< orphan*/  buffer ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  MSIDBOPEN_CREATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,char*,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* msifile ; 
 int /*<<< orphan*/  msifileW ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    static const char control_table[] =
        "Dialog\tText\n"
        "s72\tL0\n"
        "Control\tDialog\n"
        "LicenseAgreementDlg\ttext\x11\x19text\0text";
    UINT r, sz;
    MSIHANDLE hdb, hrec;
    char buffer[32];

    r = FUNC4( msifileW, MSIDBOPEN_CREATE, &hdb );
    FUNC8( r == ERROR_SUCCESS, "failed to open database %u\n", r );

    FUNC1( MAX_PATH, CURR_DIR );
    FUNC9( "temp_file", control_table, sizeof(control_table) );
    r = FUNC3( hdb, CURR_DIR, "temp_file" );
    FUNC8( r == ERROR_SUCCESS, "failed to import table %u\n", r );
    FUNC0( "temp_file" );

    r = FUNC6( hdb, "SELECT `Text` FROM `Control` WHERE `Dialog` = 'LicenseAgreementDlg'", &hrec );
    FUNC8( r == ERROR_SUCCESS, "query failed %u\n", r );

    buffer[0] = 0;
    sz = sizeof(buffer);
    r = FUNC5( hrec, 1, buffer, &sz );
    FUNC8( r == ERROR_SUCCESS, "failed to get string %u\n", r );
    FUNC8( !FUNC7( "text\r\ntext\ntext", buffer, sizeof("text\r\ntext\ntext") - 1 ), "wrong buffer contents \"%s\"\n", buffer );

    FUNC2( hrec );
    FUNC2( hdb );
    FUNC0( msifile );
}