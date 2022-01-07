
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;


 int CHECK_ENOUGH_MEMORY (int *) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKey (scalar_t__,int *,scalar_t__*) ;
 int _T (char*) ;
 int _tcslen (int *) ;
 int _tprintf (int ,int *) ;
 int delete_branch (scalar_t__,int **,int *) ;
 scalar_t__ getRegClass (int *) ;
 int * getRegKeyName (int *) ;

void delete_registry_key(TCHAR* reg_key_name)
{
    TCHAR* branch_name;
    DWORD branch_name_len;
    HKEY reg_key_class;
    HKEY branch_key;

    if (!reg_key_name || !reg_key_name[0]) {
        return;
    }

    reg_key_class = getRegClass(reg_key_name);
    if (reg_key_class == (HKEY)ERROR_INVALID_PARAMETER) {
        _tprintf(_T("Incorrect registry class specification in '%s'\n"), reg_key_name);

        return;
    }
    branch_name = getRegKeyName(reg_key_name);
    CHECK_ENOUGH_MEMORY(branch_name);
    branch_name_len = _tcslen(branch_name);
    if (!branch_name[0]) {
        _tprintf(_T("Can't delete registry class '%s'\n"), reg_key_name);

        return;
    }
    if (RegOpenKey(reg_key_class, branch_name, &branch_key) == ERROR_SUCCESS) {

        RegCloseKey(branch_key);
        delete_branch(reg_key_class, &branch_name, &branch_name_len);
    }
    HeapFree(GetProcessHeap(), 0, branch_name);
}
