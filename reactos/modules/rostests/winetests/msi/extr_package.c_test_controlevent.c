
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int MSIHANDLE ;
typedef int INSTALLUI_HANDLER_RECORD ;


 int CURR_DIR ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_INSTALL_USEREXIT ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int INSTALLLOGMODE_SHOWDIALOG ;
 int INSTALLUILEVEL_FULL ;
 int MSITEST_INSTALLLOGMODE ;
 int MsiCloseHandle (int ) ;
 scalar_t__ MsiDatabaseImportA (int ,int ,char*) ;
 scalar_t__ MsiDoActionA (int ,char*) ;
 int MsiSetExternalUIA (int ,int ,int *) ;
 scalar_t__ MsiSetExternalUIRecord (int ,int ,int *,int *) ;
 int MsiSetInternalUI (int ,int *) ;
 int add_control_entry (int ,char*) ;
 int add_controlevent_entry (int ,char*) ;
 int add_custom_action_entry (int ,char*) ;
 int add_dialog_entry (int ,char*) ;
 int closehandle_sequence ;
 int controlevent_spawn2_sequence ;
 int controlevent_spawn_sequence ;
 int create_control_table (int ) ;
 int create_controlevent_table (int ) ;
 int create_custom_action_table (int ) ;
 int create_dialog_table (int ) ;
 int create_file_data (char*,char*) ;
 int create_package_db () ;
 int externalui_message_callback ;
 int externalui_message_string_callback ;
 int flush_sequence () ;
 char* msifile ;
 int ok (int,char*,...) ;
 int ok_sequence (int ,char*,int ) ;
 int openpackage_sequence ;
 scalar_t__ package_from_db (int ,int *) ;
 int skip (char*) ;
 int winetest_interactive ;

__attribute__((used)) static void test_controlevent(void)
{
    INSTALLUI_HANDLER_RECORD prev;
    MSIHANDLE hdb, hpkg;
    UINT r;

    if (!winetest_interactive)
    {
        skip("interactive ControlEvent tests\n");
        return;
    }

    MsiSetInternalUI(INSTALLUILEVEL_FULL, ((void*)0));

    MsiSetExternalUIA(externalui_message_string_callback, INSTALLLOGMODE_SHOWDIALOG, ((void*)0));
    r = MsiSetExternalUIRecord(externalui_message_callback, MSITEST_INSTALLLOGMODE, ((void*)0), &prev);

    flush_sequence();

    CoInitialize(((void*)0));

    hdb = create_package_db();
    ok(hdb, "failed to create database\n");

    create_file_data("forcecodepage.idt", "\r\n\r\n1252\t_ForceCodepage\r\n");
    r = MsiDatabaseImportA(hdb, CURR_DIR, "forcecodepage.idt");
    ok(r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %d\n", r);

    create_dialog_table(hdb);
    add_dialog_entry(hdb, "'spawn', 50, 50, 100, 100, 3, 'button'");
    add_dialog_entry(hdb, "'spawn2', 50, 50, 100, 100, 3, 'button'");
    add_dialog_entry(hdb, "'child1', 50, 50, 80, 40, 3, 'exit'");
    add_dialog_entry(hdb, "'child2', 50, 50, 80, 40, 3, 'exit'");

    create_control_table(hdb);
    add_control_entry(hdb, "'spawn', 'button', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");
    add_control_entry(hdb, "'spawn2', 'button', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");
    add_control_entry(hdb, "'child1', 'exit', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");
    add_control_entry(hdb, "'child2', 'exit', 'PushButton', 10, 10, 66, 17, 3, 'Click me'");

    create_controlevent_table(hdb);
    add_controlevent_entry(hdb, "'child1', 'exit', 'EndDialog', 'Exit', 1, 1");
    add_controlevent_entry(hdb, "'child2', 'exit', 'EndDialog', 'Exit', 1, 1");

    create_custom_action_table(hdb);
    add_custom_action_entry(hdb, "'custom', 51, 'dummy', 'dummy value'");


    add_controlevent_entry(hdb, "'spawn', 'button', 'SpawnDialog', 'child1', 1, 1");
    add_controlevent_entry(hdb, "'spawn', 'button', 'DoAction', 'custom', 1, 2");


    add_controlevent_entry(hdb, "'spawn2', 'button', 'SpawnDialog', 'child1', 1, 1");
    add_controlevent_entry(hdb, "'spawn2', 'button', 'SpawnDialog', 'child2', 1, 2");
    add_controlevent_entry(hdb, "'spawn2', 'button', 'DoAction', 'custom', 1, 3");

    r = package_from_db(hdb, &hpkg);
    ok(r == ERROR_SUCCESS, "failed to create package: %u\n", r);
    ok_sequence(openpackage_sequence, "MsiOpenPackage()", FALSE);

    r = MsiDoActionA(hpkg, "spawn");
    ok(r == ERROR_INSTALL_USEREXIT, "expected ERROR_INSTALL_USEREXIT, got %u\n", r);
    ok_sequence(controlevent_spawn_sequence, "control event: spawn", FALSE);

    r = MsiDoActionA(hpkg, "spawn2");
    ok(r == ERROR_INSTALL_USEREXIT, "expected ERROR_INSTALL_USEREXIT, got %u\n", r);
    ok_sequence(controlevent_spawn2_sequence, "control event: spawn2", FALSE);

    MsiCloseHandle(hpkg);
    ok_sequence(closehandle_sequence, "MsiCloseHandle()", FALSE);

    CoUninitialize();
    DeleteFileA(msifile);
    DeleteFileA("forcecodepage.idt");
}
