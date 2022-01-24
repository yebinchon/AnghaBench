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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC3(LPCWSTR folder, LPWSTR mono_path, int abi_version)
{
    static const WCHAR mono_one_dot_zero[] = {'\\','m','o','n','o','-','1','.','0', 0};
    static const WCHAR mono_two_dot_zero[] = {'\\','m','o','n','o','-','2','.','0', 0};
    WCHAR mono_dll_path[MAX_PATH];
    BOOL found = FALSE;

    FUNC2(mono_path, folder);

    if (abi_version == 1)
        FUNC1(mono_path, mono_one_dot_zero);
    else if (abi_version == 2)
        FUNC1(mono_path, mono_two_dot_zero);

    found = FUNC0(mono_path, mono_dll_path, abi_version);

    return found;
}