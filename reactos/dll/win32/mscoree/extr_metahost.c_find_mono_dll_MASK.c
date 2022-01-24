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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 char const* libmono2_arch_dll ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC3(LPCWSTR path, LPWSTR dll_path, int abi_version)
{
    static const WCHAR mono_dll[] = {'\\','b','i','n','\\','m','o','n','o','.','d','l','l',0};
    static const WCHAR libmono_dll[] = {'\\','b','i','n','\\','l','i','b','m','o','n','o','.','d','l','l',0};
    static const WCHAR mono2_dll[] = {'\\','b','i','n','\\','m','o','n','o','-','2','.','0','.','d','l','l',0};
    static const WCHAR libmono2_dll[] = {'\\','b','i','n','\\','l','i','b','m','o','n','o','-','2','.','0','.','d','l','l',0};
    DWORD attributes=INVALID_FILE_ATTRIBUTES;

    if (abi_version == 1)
    {
        FUNC2(dll_path, path);
        FUNC1(dll_path, mono_dll);
        attributes = FUNC0(dll_path);

        if (attributes == INVALID_FILE_ATTRIBUTES)
        {
            FUNC2(dll_path, path);
            FUNC1(dll_path, libmono_dll);
            attributes = FUNC0(dll_path);
        }
    }
    else if (abi_version == 2)
    {
        FUNC2(dll_path, path);
        FUNC1(dll_path, libmono2_arch_dll);
        attributes = FUNC0(dll_path);

        if (attributes == INVALID_FILE_ATTRIBUTES)
        {
            FUNC2(dll_path, path);
            FUNC1(dll_path, mono2_dll);
            attributes = FUNC0(dll_path);
        }

        if (attributes == INVALID_FILE_ATTRIBUTES)
        {
            FUNC2(dll_path, path);
            FUNC1(dll_path, libmono2_dll);
            attributes = FUNC0(dll_path);
        }
    }

    return (attributes != INVALID_FILE_ATTRIBUTES);
}