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
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  INSTALLUI_HANDLER_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ERROR_INSTALL_USEREXIT ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INSTALLLOGMODE_SHOWDIALOG ; 
 int /*<<< orphan*/  INSTALLUILEVEL_FULL ; 
 int /*<<< orphan*/  MSITEST_INSTALLLOGMODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  closehandle_sequence ; 
 int /*<<< orphan*/  controlevent_spawn2_sequence ; 
 int /*<<< orphan*/  controlevent_spawn_sequence ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  externalui_message_callback ; 
 int /*<<< orphan*/  externalui_message_string_callback ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* msifile ; 
 int /*<<< orphan*/  FUNC20 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openpackage_sequence ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  winetest_interactive ; 

__attribute__((used)) static void FUNC24(void)
{
    INSTALLUI_HANDLER_RECORD prev;
    MSIHANDLE hdb, hpkg;
    UINT r;

    if (!winetest_interactive)
    {
        FUNC23("interactive ControlEvent tests\n");
        return;
    }

    FUNC8(INSTALLUILEVEL_FULL, NULL);

    FUNC6(externalui_message_string_callback, INSTALLLOGMODE_SHOWDIALOG, NULL);
    r = FUNC7(externalui_message_callback, MSITEST_INSTALLLOGMODE, NULL, &prev);

    FUNC19();

    FUNC0(NULL);

    hdb = FUNC18();
    FUNC20(hdb, "failed to create database\n");

    FUNC17("forcecodepage.idt", "\r\n\r\n1252\t_ForceCodepage\r\n");
    r = FUNC4(hdb, CURR_DIR, "forcecodepage.idt");
    FUNC20(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    FUNC16(hdb);
    FUNC12(hdb, "'spawn', 50, 50, 100, 100, 3, 'button'");
    FUNC12(hdb, "'spawn2', 50, 50, 100, 100, 3, 'button'");
    FUNC12(hdb, "'child1', 50, 50, 80, 40, 3, 'exit'");
    FUNC12(hdb, "'child2', 50, 50, 80, 40, 3, 'exit'");

    FUNC13(hdb);
    FUNC9(hdb, "'spawn', 'button', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");
    FUNC9(hdb, "'spawn2', 'button', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");
    FUNC9(hdb, "'child1', 'exit', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");
    FUNC9(hdb, "'child2', 'exit', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");

    FUNC14(hdb);
    FUNC10(hdb, "'child1', 'exit', 'EndDialog', 'Exit', 1, 1");
    FUNC10(hdb, "'child2', 'exit', 'EndDialog', 'Exit', 1, 1");

    FUNC15(hdb);
    FUNC11(hdb, "'custom', 51, 'dummy', 'dummy value'");

    /* SpawnDialog and EndDialog should trigger after all other events */
    FUNC10(hdb, "'spawn', 'button', 'SpawnDialog', 'child1', 1, 1");
    FUNC10(hdb, "'spawn', 'button', 'DoAction', 'custom', 1, 2");

    /* Multiple dialog events cause only the last one to be triggered */
    FUNC10(hdb, "'spawn2', 'button', 'SpawnDialog', 'child1', 1, 1");
    FUNC10(hdb, "'spawn2', 'button', 'SpawnDialog', 'child2', 1, 2");
    FUNC10(hdb, "'spawn2', 'button', 'DoAction', 'custom', 1, 3");

    r = FUNC22(hdb, &hpkg);
    FUNC20(r == ERROR_SUCCESS, "failed to create package: %u\n", r);
    FUNC21(openpackage_sequence, "MsiOpenPackage()", FALSE);

    r = FUNC5(hpkg, "spawn");
    FUNC20(r == ERROR_INSTALL_USEREXIT, "expected ERROR_INSTALL_USEREXIT, got %u\n", r);
    FUNC21(controlevent_spawn_sequence, "control event: spawn", FALSE);

    r = FUNC5(hpkg, "spawn2");
    FUNC20(r == ERROR_INSTALL_USEREXIT, "expected ERROR_INSTALL_USEREXIT, got %u\n", r);
    FUNC21(controlevent_spawn2_sequence, "control event: spawn2", FALSE);

    FUNC3(hpkg);
    FUNC21(closehandle_sequence, "MsiCloseHandle()", FALSE);

    FUNC1();
    FUNC2(msifile);
    FUNC2("forcecodepage.idt");
}