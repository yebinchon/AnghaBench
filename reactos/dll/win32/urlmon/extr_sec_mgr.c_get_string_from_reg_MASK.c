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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int REG_SZ ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(HKEY hcu, HKEY hklm, LPCWSTR name, LPWSTR out, DWORD maxlen)
{
    DWORD type = REG_SZ;
    DWORD len = maxlen * sizeof(WCHAR);
    DWORD res;

    res = FUNC0(hcu, name, NULL, &type, (LPBYTE) out, &len);

    if (res && hklm) {
        len = maxlen * sizeof(WCHAR);
        type = REG_SZ;
        res = FUNC0(hklm, name, NULL, &type, (LPBYTE) out, &len);
    }

    if (res) {
        FUNC1("%s failed: %d\n", FUNC2(name), res);
        *out = '\0';
    }
}