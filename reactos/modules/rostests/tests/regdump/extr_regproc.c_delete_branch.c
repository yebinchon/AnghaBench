
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef size_t DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int REGPROC_print_error () ;
 int REGPROC_resize_char_buffer (char**,size_t*,size_t) ;
 int RegCloseKey (int ) ;
 int RegDeleteKey (int ,char*) ;
 scalar_t__ RegEnumKeyEx (int ,long,char*,size_t*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKey (int ,char*,int *) ;
 scalar_t__ RegQueryInfoKey (int ,int *,int *,int *,size_t*,size_t*,int *,int *,int *,int *,int *,int *) ;
 int TRUE ;
 size_t _tcslen (char*) ;

BOOL delete_branch(HKEY key, TCHAR** reg_key_name_buf, DWORD* reg_key_name_len)
{
    HKEY branch_key;
    DWORD max_sub_key_len;
    DWORD subkeys;
    DWORD curr_len;
    LONG ret;
    long int i;

    if (RegOpenKey(key, *reg_key_name_buf, &branch_key) != ERROR_SUCCESS) {
        REGPROC_print_error();
        return FALSE;
    }


    if (RegQueryInfoKey(branch_key, ((void*)0), ((void*)0), ((void*)0), &subkeys, &max_sub_key_len,
                        ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0)) != ERROR_SUCCESS) {
        REGPROC_print_error();
        RegCloseKey(branch_key);
        return FALSE;
    }
    curr_len = _tcslen(*reg_key_name_buf);
    REGPROC_resize_char_buffer(reg_key_name_buf, reg_key_name_len, max_sub_key_len + curr_len + 1);

    (*reg_key_name_buf)[curr_len] = '\\';
    for (i = subkeys - 1; i >= 0; i--) {
        DWORD buf_len = *reg_key_name_len - curr_len;
        ret = RegEnumKeyEx(branch_key, i, *reg_key_name_buf + curr_len + 1, &buf_len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (ret != ERROR_SUCCESS && ret != ERROR_MORE_DATA && ret != ERROR_NO_MORE_ITEMS) {
            REGPROC_print_error();
            RegCloseKey(branch_key);
            return FALSE;
        } else {
            delete_branch(key, reg_key_name_buf, reg_key_name_len);
        }
    }
    (*reg_key_name_buf)[curr_len] = '\0';
    RegCloseKey(branch_key);
    RegDeleteKey(key, *reg_key_name_buf);
    return TRUE;
}
