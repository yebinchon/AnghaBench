
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__ HKEY ;
typedef int FILE ;
typedef int DWORD ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int CHECK_ENOUGH_MEMORY (scalar_t__*) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetProcessHeap () ;
 scalar_t__ HKEY_CLASSES_ROOT ;
 scalar_t__ HKEY_CURRENT_CONFIG ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int KEY_MAX_LEN ;
 int * REGPROC_open_export_file (scalar_t__*) ;
 int REGPROC_print_error () ;
 int REGPROC_resize_char_buffer (scalar_t__**,int*,int ) ;
 int REG_CLASS_NUMBER ;
 int REG_VAL_BUF_SIZE ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKey (scalar_t__,scalar_t__*,scalar_t__*) ;
 int TRUE ;
 int _T (char*) ;
 int _tcscpy (scalar_t__*,scalar_t__*) ;
 int _tcslen (scalar_t__*) ;
 int _tprintf (int ,scalar_t__*) ;
 int export_hkey (int *,scalar_t__,scalar_t__**,int*,scalar_t__**,int*,scalar_t__**,int*) ;
 int fclose (int *) ;
 scalar_t__ getRegClass (scalar_t__*) ;
 scalar_t__* getRegKeyName (scalar_t__*) ;
 scalar_t__* reg_class_keys ;
 scalar_t__** reg_class_names ;

BOOL export_registry_key(TCHAR* file_name, TCHAR* reg_key_name)
{
    HKEY reg_key_class;

    TCHAR *reg_key_name_buf;
    TCHAR *val_name_buf;
    BYTE *val_buf;
    DWORD reg_key_name_len = KEY_MAX_LEN;
    DWORD val_name_len = KEY_MAX_LEN;
    DWORD val_size = REG_VAL_BUF_SIZE;
    FILE *file = ((void*)0);



    reg_key_name_buf = HeapAlloc(GetProcessHeap(), 0, reg_key_name_len * sizeof(*reg_key_name_buf));
    val_name_buf = HeapAlloc(GetProcessHeap(), 0, val_name_len * sizeof(*val_name_buf));
    val_buf = HeapAlloc(GetProcessHeap(), 0, val_size);
    CHECK_ENOUGH_MEMORY(reg_key_name_buf && val_name_buf && val_buf);

    if (reg_key_name && reg_key_name[0]) {
        TCHAR *branch_name;
        HKEY key;

        REGPROC_resize_char_buffer(&reg_key_name_buf, &reg_key_name_len,
                                   _tcslen(reg_key_name));
        _tcscpy(reg_key_name_buf, reg_key_name);


        reg_key_class = getRegClass(reg_key_name);
        if (reg_key_class == (HKEY)ERROR_INVALID_PARAMETER) {
            _tprintf(_T("Incorrect registry class specification in '%s\n"), reg_key_name);

            return FALSE;
        }
        branch_name = getRegKeyName(reg_key_name);
        CHECK_ENOUGH_MEMORY(branch_name);
        if (!branch_name[0]) {

            file = REGPROC_open_export_file(file_name);
            export_hkey(file, reg_key_class,
                        &reg_key_name_buf, &reg_key_name_len,
                        &val_name_buf, &val_name_len,
                        &val_buf, &val_size);
        } else if (RegOpenKey(reg_key_class, branch_name, &key) == ERROR_SUCCESS) {
            file = REGPROC_open_export_file(file_name);
            export_hkey(file, key,
                        &reg_key_name_buf, &reg_key_name_len,
                        &val_name_buf, &val_name_len,
                        &val_buf, &val_size);
            RegCloseKey(key);
        } else {
            _tprintf(_T("Can't export. Registry key '%s does not exist!\n"), reg_key_name);
            REGPROC_print_error();
        }
        HeapFree(GetProcessHeap(), 0, branch_name);
    } else {
        int i;


        file = REGPROC_open_export_file(file_name);
        for (i = 0; i < REG_CLASS_NUMBER; i++) {

            if (reg_class_keys[i] != HKEY_CLASSES_ROOT &&
                reg_class_keys[i] != HKEY_CURRENT_USER &&
                reg_class_keys[i] != HKEY_CURRENT_CONFIG) {
                _tcscpy(reg_key_name_buf, reg_class_names[i]);
                export_hkey(file, reg_class_keys[i],
                            &reg_key_name_buf, &reg_key_name_len,
                            &val_name_buf, &val_name_len,
                            &val_buf, &val_size);
            }
        }
    }
    if (file) {
        fclose(file);
    }

    HeapFree(GetProcessHeap(), 0, val_buf);
    HeapFree(GetProcessHeap(), 0, val_name_buf);
    HeapFree(GetProcessHeap(), 0, reg_key_name_buf);
    return TRUE;
}
