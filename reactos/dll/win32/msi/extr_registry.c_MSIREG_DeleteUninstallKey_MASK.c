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
typedef  enum platform { ____Placeholder_platform } platform ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int PLATFORM_INTEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ is_64bit ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szUninstall ; 
 int /*<<< orphan*/  szUninstall_32node ; 

UINT FUNC5(const WCHAR *product, enum platform platform)
{
    WCHAR keypath[0x200];

    FUNC1("%s\n", FUNC2(product));

    if (is_64bit && platform == PLATFORM_INTEL)
    {
        FUNC4(keypath, szUninstall_32node);
        FUNC3(keypath, product);
    }
    else
    {
        FUNC4(keypath, szUninstall);
        FUNC3(keypath, product);
    }
    return FUNC0(HKEY_LOCAL_MACHINE, keypath);
}