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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RegCopyTreeA ; 
 int /*<<< orphan*/  RegDeleteKeyExA ; 
 int /*<<< orphan*/  RegDeleteKeyValueA ; 
 int /*<<< orphan*/  RegDeleteTreeA ; 
 int /*<<< orphan*/  RegGetValueA ; 
 int /*<<< orphan*/  RegSetKeyValueW ; 
 void* pIsWow64Process ; 
 void* pNtDeleteKey ; 
 void* pRtlFormatCurrentUserKeyPath ; 
 void* pRtlFreeUnicodeString ; 

__attribute__((used)) static void FUNC3(void)
{
    HMODULE hntdll = FUNC1("ntdll.dll");
    HMODULE hkernel32 = FUNC1("kernel32.dll");
    HMODULE hadvapi32 = FUNC1("advapi32.dll");

    /* This function was introduced with Windows 2003 SP1 */
    FUNC0(RegGetValueA);
    FUNC0(RegCopyTreeA);
    FUNC0(RegDeleteTreeA);
    FUNC0(RegDeleteKeyExA);
    FUNC0(RegDeleteKeyValueA);
    FUNC0(RegSetKeyValueW);

    pIsWow64Process = (void *)FUNC2( hkernel32, "IsWow64Process" );
    pRtlFormatCurrentUserKeyPath = (void *)FUNC2( hntdll, "RtlFormatCurrentUserKeyPath" );
    pRtlFreeUnicodeString = (void *)FUNC2(hntdll, "RtlFreeUnicodeString");
    pNtDeleteKey = (void *)FUNC2( hntdll, "NtDeleteKey" );
}