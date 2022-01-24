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
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__ HKEY ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  scalar_t__ BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ HKEY_CLASSES_ROOT ; 
 scalar_t__ HKEY_CURRENT_CONFIG ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int KEY_MAX_LEN ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__**,int*,int /*<<< orphan*/ ) ; 
 int REG_CLASS_NUMBER ; 
 int REG_VAL_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__**,int*,scalar_t__**,int*,scalar_t__**,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (scalar_t__*) ; 
 scalar_t__* FUNC16 (scalar_t__*) ; 
 scalar_t__* reg_class_keys ; 
 scalar_t__** reg_class_names ; 

BOOL FUNC17(TCHAR* file_name, TCHAR* reg_key_name)
{
    HKEY reg_key_class;

    TCHAR *reg_key_name_buf;
    TCHAR *val_name_buf;
    BYTE *val_buf;
    DWORD reg_key_name_len = KEY_MAX_LEN;
    DWORD val_name_len = KEY_MAX_LEN;
    DWORD val_size = REG_VAL_BUF_SIZE;
    FILE *file = NULL;

    //_tprintf(_T("export_registry_key(%s, %s)\n"), reg_key_name, file_name);

    reg_key_name_buf = FUNC2(FUNC1(), 0, reg_key_name_len * sizeof(*reg_key_name_buf));
    val_name_buf = FUNC2(FUNC1(), 0, val_name_len * sizeof(*val_name_buf));
    val_buf = FUNC2(FUNC1(), 0, val_size);
    FUNC0(reg_key_name_buf && val_name_buf && val_buf);

    if (reg_key_name && reg_key_name[0]) {
        TCHAR *branch_name;
        HKEY key;

        FUNC6(&reg_key_name_buf, &reg_key_name_len,
                                   FUNC11(reg_key_name));
        FUNC10(reg_key_name_buf, reg_key_name);

        /* open the specified key */
        reg_key_class = FUNC15(reg_key_name);
        if (reg_key_class == (HKEY)ERROR_INVALID_PARAMETER) {
            FUNC12(FUNC9("Incorrect registry class specification in '%s\n"), reg_key_name);
            //exit(1);
            return FALSE;
        }
        branch_name = FUNC16(reg_key_name);
        FUNC0(branch_name);
        if (!branch_name[0]) {
            /* no branch - registry class is specified */
            file = FUNC4(file_name);
            FUNC13(file, reg_key_class,
                        &reg_key_name_buf, &reg_key_name_len,
                        &val_name_buf, &val_name_len,
                        &val_buf, &val_size);
        } else if (FUNC8(reg_key_class, branch_name, &key) == ERROR_SUCCESS) {
            file = FUNC4(file_name);
            FUNC13(file, key,
                        &reg_key_name_buf, &reg_key_name_len,
                        &val_name_buf, &val_name_len,
                        &val_buf, &val_size);
            FUNC7(key);
        } else {
            FUNC12(FUNC9("Can't export. Registry key '%s does not exist!\n"), reg_key_name);
            FUNC5();
        }
        FUNC3(FUNC1(), 0, branch_name);
    } else {
        int i;

        /* export all registry classes */
        file = FUNC4(file_name);
        for (i = 0; i < REG_CLASS_NUMBER; i++) {
            /* do not export HKEY_CLASSES_ROOT */
            if (reg_class_keys[i] != HKEY_CLASSES_ROOT &&
                reg_class_keys[i] != HKEY_CURRENT_USER &&
                reg_class_keys[i] != HKEY_CURRENT_CONFIG) {
                FUNC10(reg_key_name_buf, reg_class_names[i]);
                FUNC13(file, reg_class_keys[i],
                            &reg_key_name_buf, &reg_key_name_len,
                            &val_name_buf, &val_name_len,
                            &val_buf, &val_size);
            }
        }
    }
    if (file) {
        FUNC14(file);
    }
//    HeapFree(GetProcessHeap(), 0, reg_key_name);
    FUNC3(FUNC1(), 0, val_buf);
    FUNC3(FUNC1(), 0, val_name_buf);
    FUNC3(FUNC1(), 0, reg_key_name_buf);
    return TRUE;
}