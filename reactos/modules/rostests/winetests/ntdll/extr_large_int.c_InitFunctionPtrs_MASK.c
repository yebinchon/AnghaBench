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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ hntdll ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* pRtlExtendedMagicDivide ; 
 void* pRtlFreeAnsiString ; 
 void* pRtlInt64ToUnicodeString ; 
 void* pRtlLargeIntegerToChar ; 
 void* pRtlUnicodeStringToAnsiString ; 
 void* p_alldvrm ; 
 void* p_aulldvrm ; 

__attribute__((used)) static void FUNC3(void)
{
    hntdll = FUNC1("ntdll.dll");
    FUNC2(hntdll != 0, "LoadLibrary failed\n");
    if (hntdll) {
	pRtlExtendedMagicDivide = (void *)FUNC0(hntdll, "RtlExtendedMagicDivide");
	pRtlFreeAnsiString = (void *)FUNC0(hntdll, "RtlFreeAnsiString");
	pRtlInt64ToUnicodeString = (void *)FUNC0(hntdll, "RtlInt64ToUnicodeString");
	pRtlLargeIntegerToChar = (void *)FUNC0(hntdll, "RtlLargeIntegerToChar");
	pRtlUnicodeStringToAnsiString = (void *)FUNC0(hntdll, "RtlUnicodeStringToAnsiString");
        p_alldvrm = (void *)FUNC0(hntdll, "_alldvrm");
        p_aulldvrm = (void *)FUNC0(hntdll, "_aulldvrm");
    } /* if */
}