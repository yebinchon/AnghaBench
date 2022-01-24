#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {scalar_t__ pwszFunctionName; scalar_t__ pwszDLLName; } ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  TYPE_1__ CRYPT_TRUST_REG_ENTRY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 char const* Dll ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* Trust ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static LONG FUNC5(WCHAR* GuidString,
                                        const WCHAR* FunctionType,
                                        CRYPT_TRUST_REG_ENTRY RegEntry)
{
    static const WCHAR Function[] = {'$','F','u','n','c','t','i','o','n', 0};
    WCHAR ProvKey[MAX_PATH];
    HKEY Key;
    LONG Res = ERROR_SUCCESS;

    /* Create the needed key string */
    ProvKey[0]='\0';
    FUNC3(ProvKey, Trust);
    FUNC3(ProvKey, FunctionType);
    FUNC3(ProvKey, GuidString);

    if (!RegEntry.pwszDLLName || !RegEntry.pwszFunctionName)
        return ERROR_INVALID_PARAMETER;

    Res = FUNC1(HKEY_LOCAL_MACHINE, ProvKey, 0, NULL, 0, KEY_WRITE, NULL, &Key, NULL);
    if (Res != ERROR_SUCCESS) goto error_close_key;

    /* Create the $DLL entry */
    Res = FUNC2(Key, Dll, 0, REG_SZ, (BYTE*)RegEntry.pwszDLLName,
        (FUNC4(RegEntry.pwszDLLName) + 1)*sizeof(WCHAR));
    if (Res != ERROR_SUCCESS) goto error_close_key;

    /* Create the $Function entry */
    Res = FUNC2(Key, Function, 0, REG_SZ, (BYTE*)RegEntry.pwszFunctionName,
        (FUNC4(RegEntry.pwszFunctionName) + 1)*sizeof(WCHAR));

error_close_key:
    FUNC0(Key);

    return Res;
}