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
typedef  int /*<<< orphan*/  buffer ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int REG_SZ ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  sTestpath1 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
    DWORD ret, size, type;
    BYTE buffer[10];

    size = sizeof(buffer);
    ret = FUNC0(hkey_main, "TP1_SZ", NULL, &type, NULL, &size);
    FUNC1(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
    FUNC1(size == FUNC2(sTestpath1) + 1, "(%d,%d)\n", (DWORD)FUNC2(sTestpath1) + 1, size);
    FUNC1(type == REG_SZ, "type %d is not REG_SZ\n", type);

    type = 0xdeadbeef;
    size = 0xdeadbeef;
    ret = FUNC0(HKEY_CLASSES_ROOT, "Nonexistent Value", NULL, &type, NULL, &size);
    FUNC1(ret == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", ret);
    FUNC1(size == 0, "size should have been set to 0 instead of %d\n", size);

    size = sizeof(buffer);
    ret = FUNC0(HKEY_CLASSES_ROOT, "Nonexistent Value", NULL, &type, buffer, &size);
    FUNC1(ret == ERROR_FILE_NOT_FOUND, "expected ERROR_FILE_NOT_FOUND, got %d\n", ret);
    FUNC1(size == sizeof(buffer), "size shouldn't have been changed to %d\n", size);

    size = 4;
    ret = FUNC0(hkey_main, "BIN32", NULL, &size, buffer, &size);
    FUNC1(ret == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %d\n", ret);
}