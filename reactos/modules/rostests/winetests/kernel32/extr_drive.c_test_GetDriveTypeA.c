
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;


 int DRIVE_NO_ROOT_DIR ;
 int DRIVE_RAMDISK ;
 int DRIVE_UNKNOWN ;
 int GetDriveTypeA (char*) ;
 int GetLastError () ;
 int GetLogicalDrives () ;
 int ok (int,char*,char,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_GetDriveTypeA(void)
{
    char drive[] = "?:\\";
    char existing_drive_letter = 0;
    DWORD logical_drives;
    UINT type;

    logical_drives = GetLogicalDrives();
    ok(logical_drives != 0, "GetLogicalDrives error %d\n", GetLastError());

    for (drive[0] = 'A'; drive[0] <= 'Z'; drive[0]++)
    {
        type = GetDriveTypeA(drive);
        ok(type > DRIVE_UNKNOWN && type <= DRIVE_RAMDISK,
           "not a valid drive %c: type %u\n", drive[0], type);

        if (!(logical_drives & 1))
            ok(type == DRIVE_NO_ROOT_DIR,
               "GetDriveTypeA should return DRIVE_NO_ROOT_DIR for inexistent drive %c: but not %u\n",
               drive[0], type);
        else if (type != DRIVE_NO_ROOT_DIR)
            existing_drive_letter = drive[0];

        logical_drives >>= 1;
    }

    if (!existing_drive_letter) {
        skip("No drives found, skipping drive spec format tests.\n");
        return;
    }

    drive[0] = existing_drive_letter;
    drive[2] = 0;
    type = GetDriveTypeA(drive);
    ok(type > DRIVE_NO_ROOT_DIR && type <= DRIVE_RAMDISK, "got %u for drive spec '%s'\n", type, drive);

    drive[1] = '?';
    type = GetDriveTypeA(drive);
    ok(type == DRIVE_NO_ROOT_DIR, "got %u for drive spec '%s'\n", type, drive);

    drive[1] = 0;
    type = GetDriveTypeA(drive);
    ok(type == DRIVE_NO_ROOT_DIR, "got %u for drive spec '%s'\n", type, drive);

    drive[0] = '?';
    type = GetDriveTypeA(drive);
    ok(type == DRIVE_NO_ROOT_DIR, "got %u for drive spec '%s'\n", type, drive);

    drive[0] = 0;
    type = GetDriveTypeA(drive);
    ok(type == DRIVE_NO_ROOT_DIR, "got %u for drive spec '%s'\n", type, drive);
}
