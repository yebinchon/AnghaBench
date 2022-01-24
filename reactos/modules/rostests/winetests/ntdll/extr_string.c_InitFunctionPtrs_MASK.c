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
 void* pRtlCreateUnicodeStringFromAsciiz ; 
 void* pRtlFreeAnsiString ; 
 void* pRtlFreeUnicodeString ; 
 void* pRtlUnicodeStringToAnsiString ; 
 void* p__snprintf ; 
 void* p_atoi64 ; 
 void* p_bsearch ; 
 void* p_i64toa ; 
 void* p_i64tow ; 
 void* p_itoa ; 
 void* p_itow ; 
 void* p_ltoa ; 
 void* p_ltow ; 
 void* p_qsort ; 
 void* p_ui64toa ; 
 void* p_ui64tow ; 
 void* p_ultoa ; 
 void* p_ultow ; 
 void* p_wcschr ; 
 void* p_wcslwr ; 
 void* p_wcsrchr ; 
 void* p_wcsupr ; 
 void* p_wtoi ; 
 void* p_wtoi64 ; 
 void* p_wtol ; 
 void* patoi ; 
 void* patol ; 

__attribute__((used)) static void FUNC3(void)
{
    hntdll = FUNC1("ntdll.dll");
    FUNC2(hntdll != 0, "LoadLibrary failed\n");
    if (hntdll) {
	pRtlUnicodeStringToAnsiString = (void *)FUNC0(hntdll, "RtlUnicodeStringToAnsiString");
	pRtlFreeAnsiString = (void *)FUNC0(hntdll, "RtlFreeAnsiString");
	pRtlCreateUnicodeStringFromAsciiz = (void *)FUNC0(hntdll, "RtlCreateUnicodeStringFromAsciiz");
	pRtlFreeUnicodeString = (void *)FUNC0(hntdll, "RtlFreeUnicodeString");

	patoi = (void *)FUNC0(hntdll, "atoi");
	patol = (void *)FUNC0(hntdll, "atol");
	p_atoi64 = (void *)FUNC0(hntdll, "_atoi64");
	p_itoa = (void *)FUNC0(hntdll, "_itoa");
	p_ltoa = (void *)FUNC0(hntdll, "_ltoa");
	p_ultoa = (void *)FUNC0(hntdll, "_ultoa");
	p_i64toa = (void *)FUNC0(hntdll, "_i64toa");
	p_ui64toa = (void *)FUNC0(hntdll, "_ui64toa");

	p_wtoi = (void *)FUNC0(hntdll, "_wtoi");
	p_wtol = (void *)FUNC0(hntdll, "_wtol");
	p_wtoi64 = (void *)FUNC0(hntdll, "_wtoi64");
	p_itow = (void *)FUNC0(hntdll, "_itow");
	p_ltow = (void *)FUNC0(hntdll, "_ltow");
	p_ultow = (void *)FUNC0(hntdll, "_ultow");
	p_i64tow = (void *)FUNC0(hntdll, "_i64tow");
	p_ui64tow = (void *)FUNC0(hntdll, "_ui64tow");

        p_wcslwr = (void *)FUNC0(hntdll, "_wcslwr");
        p_wcsupr = (void *)FUNC0(hntdll, "_wcsupr");

	p_wcschr= (void *)FUNC0(hntdll, "wcschr");
	p_wcsrchr= (void *)FUNC0(hntdll, "wcsrchr");
	p_qsort= (void *)FUNC0(hntdll, "qsort");
	p_bsearch= (void *)FUNC0(hntdll, "bsearch");

        p__snprintf = (void *)FUNC0(hntdll, "_snprintf");
    } /* if */
}