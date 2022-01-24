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
typedef  char TCHAR ;
typedef  int REGEDIT_ACTION ;
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  ACTION_ADD 130 
#define  ACTION_DELETE 129 
#define  ACTION_EXPORT 128 
 int /*<<< orphan*/  FALSE ; 
 int KEY_MAX_LEN ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* usage ; 

BOOL FUNC6(REGEDIT_ACTION action, LPSTR s)
{
    TCHAR filename[MAX_PATH];
    TCHAR reg_key_name[KEY_MAX_LEN];

    switch (action) {
    case ACTION_ADD:
        FUNC2(&s, filename, MAX_PATH);
        if (!filename[0]) {
            FUNC5("No file name is specified\n%s", usage);
            return FALSE;
            //exit(1);
        }
        while (filename[0]) {
            if (!FUNC3(filename)) {
                FUNC4("");
                FUNC5("Can't open file \"%s\"\n", filename);
                return FALSE;
                //exit(1);
            }
            FUNC2(&s, filename, MAX_PATH);
        }
        break;
    case ACTION_DELETE:
        FUNC2(&s, reg_key_name, KEY_MAX_LEN);
        if (!reg_key_name[0]) {
            FUNC5("No registry key is specified for removal\n%s", usage);
            return FALSE;
            //exit(1);
        }
        FUNC0(reg_key_name);
        break;
    case ACTION_EXPORT:
        filename[0] = '\0';
        FUNC2(&s, filename, MAX_PATH);
        if (!filename[0]) {
            FUNC5("No file name is specified\n%s", usage);
            return FALSE;
            //exit(1);
        }
        if (s[0]) {
            FUNC2(&s, reg_key_name, KEY_MAX_LEN);
            FUNC1(filename, reg_key_name);
        } else {
            FUNC1(filename, NULL);
        }
        break;
    default:
        FUNC5("Unhandled action!\n");
        return FALSE;
    }
    return TRUE;
}