
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef int REGEDIT_ACTION ;
typedef int * LPSTR ;
typedef int BOOL ;





 int FALSE ;
 int KEY_MAX_LEN ;
 int MAX_PATH ;
 int TRUE ;
 int delete_registry_key (char*) ;
 int export_registry_key (char*,char*) ;
 int get_file_name (int **,char*,int) ;
 int import_registry_file (char*) ;
 int perror (char*) ;
 int printf (char*,...) ;
 char* usage ;

BOOL PerformRegAction(REGEDIT_ACTION action, LPSTR s)
{
    TCHAR filename[MAX_PATH];
    TCHAR reg_key_name[KEY_MAX_LEN];

    switch (action) {
    case 130:
        get_file_name(&s, filename, MAX_PATH);
        if (!filename[0]) {
            printf("No file name is specified\n%s", usage);
            return FALSE;

        }
        while (filename[0]) {
            if (!import_registry_file(filename)) {
                perror("");
                printf("Can't open file \"%s\"\n", filename);
                return FALSE;

            }
            get_file_name(&s, filename, MAX_PATH);
        }
        break;
    case 129:
        get_file_name(&s, reg_key_name, KEY_MAX_LEN);
        if (!reg_key_name[0]) {
            printf("No registry key is specified for removal\n%s", usage);
            return FALSE;

        }
        delete_registry_key(reg_key_name);
        break;
    case 128:
        filename[0] = '\0';
        get_file_name(&s, filename, MAX_PATH);
        if (!filename[0]) {
            printf("No file name is specified\n%s", usage);
            return FALSE;

        }
        if (s[0]) {
            get_file_name(&s, reg_key_name, KEY_MAX_LEN);
            export_registry_key(filename, reg_key_name);
        } else {
            export_registry_key(filename, ((void*)0));
        }
        break;
    default:
        printf("Unhandled action!\n");
        return FALSE;
    }
    return TRUE;
}
