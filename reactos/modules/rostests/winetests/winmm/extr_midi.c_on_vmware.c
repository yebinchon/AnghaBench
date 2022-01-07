
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef int HKEY ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_ENUMERATE_SUB_KEYS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExA (int ,char*,int ,int ,int *) ;
 int scan_subkeys (int ,char* const*) ;

__attribute__((used)) static BOOL on_vmware(void)
{
    static const LPCSTR sub_keys[] = { "Scsi Port ", "Scsi Bus ", "Target Id ", "Logical Unit Id ", ((void*)0) };
    HKEY scsi;
    BOOL found_vmware = FALSE;

    if (RegOpenKeyExA(HKEY_LOCAL_MACHINE, "HARDWARE\\DEVICEMAP\\Scsi", 0, KEY_ENUMERATE_SUB_KEYS, &scsi) != ERROR_SUCCESS)
        return FALSE;

    found_vmware = scan_subkeys(scsi, sub_keys);

    RegCloseKey(scsi);

    return found_vmware;
}
