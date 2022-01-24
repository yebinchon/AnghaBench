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
 void* pRtlAnsiStringToUnicodeString ; 
 void* pRtlAppendAsciizToString ; 
 void* pRtlAppendStringToString ; 
 void* pRtlAppendUnicodeStringToString ; 
 void* pRtlAppendUnicodeToString ; 
 void* pRtlCharToInteger ; 
 void* pRtlCompareUnicodeString ; 
 void* pRtlCompareUnicodeStrings ; 
 void* pRtlCopyString ; 
 void* pRtlCreateUnicodeString ; 
 void* pRtlCreateUnicodeStringFromAsciiz ; 
 void* pRtlDowncaseUnicodeString ; 
 void* pRtlDuplicateUnicodeString ; 
 void* pRtlEqualUnicodeString ; 
 void* pRtlFindCharInUnicodeString ; 
 void* pRtlFreeAnsiString ; 
 void* pRtlFreeUnicodeString ; 
 void* pRtlGUIDFromString ; 
 void* pRtlHashUnicodeString ; 
 void* pRtlInitAnsiString ; 
 void* pRtlInitString ; 
 void* pRtlInitUnicodeString ; 
 void* pRtlInitUnicodeStringEx ; 
 void* pRtlIntegerToChar ; 
 void* pRtlIntegerToUnicodeString ; 
 void* pRtlIsTextUnicode ; 
 void* pRtlMultiAppendUnicodeStringBuffer ; 
 void* pRtlStringFromGUID ; 
 void* pRtlUTF8ToUnicodeN ; 
 void* pRtlUnicodeStringToAnsiString ; 
 void* pRtlUnicodeStringToInteger ; 
 void* pRtlUnicodeToUTF8N ; 
 void* pRtlUpcaseUnicodeChar ; 
 void* pRtlUpcaseUnicodeString ; 
 void* pRtlUpperChar ; 
 void* pRtlUpperString ; 
 void* pRtlValidateUnicodeString ; 

__attribute__((used)) static void FUNC3(void)
{
    hntdll = FUNC1("ntdll.dll");
    FUNC2(hntdll != 0, "LoadLibrary failed\n");
    if (hntdll) {
	pRtlAnsiStringToUnicodeString = (void *)FUNC0(hntdll, "RtlAnsiStringToUnicodeString");
	pRtlAppendAsciizToString = (void *)FUNC0(hntdll, "RtlAppendAsciizToString");
	pRtlAppendStringToString = (void *)FUNC0(hntdll, "RtlAppendStringToString");
	pRtlAppendUnicodeStringToString = (void *)FUNC0(hntdll, "RtlAppendUnicodeStringToString");
	pRtlAppendUnicodeToString = (void *)FUNC0(hntdll, "RtlAppendUnicodeToString");
	pRtlCharToInteger = (void *)FUNC0(hntdll, "RtlCharToInteger");
	pRtlCompareUnicodeString = (void *)FUNC0(hntdll, "RtlCompareUnicodeString");
	pRtlCompareUnicodeStrings = (void *)FUNC0(hntdll, "RtlCompareUnicodeStrings");
	pRtlCopyString = (void *)FUNC0(hntdll, "RtlCopyString");
	pRtlCreateUnicodeString = (void *)FUNC0(hntdll, "RtlCreateUnicodeString");
	pRtlCreateUnicodeStringFromAsciiz = (void *)FUNC0(hntdll, "RtlCreateUnicodeStringFromAsciiz");
	pRtlDowncaseUnicodeString = (void *)FUNC0(hntdll, "RtlDowncaseUnicodeString");
	pRtlDuplicateUnicodeString = (void *)FUNC0(hntdll, "RtlDuplicateUnicodeString");
	pRtlEqualUnicodeString = (void *)FUNC0(hntdll, "RtlEqualUnicodeString");
	pRtlFindCharInUnicodeString = (void *)FUNC0(hntdll, "RtlFindCharInUnicodeString");
	pRtlFreeAnsiString = (void *)FUNC0(hntdll, "RtlFreeAnsiString");
	pRtlFreeUnicodeString = (void *)FUNC0(hntdll, "RtlFreeUnicodeString");
	pRtlInitAnsiString = (void *)FUNC0(hntdll, "RtlInitAnsiString");
	pRtlInitString = (void *)FUNC0(hntdll, "RtlInitString");
	pRtlInitUnicodeString = (void *)FUNC0(hntdll, "RtlInitUnicodeString");
	pRtlInitUnicodeStringEx = (void *)FUNC0(hntdll, "RtlInitUnicodeStringEx");
	pRtlIntegerToChar = (void *)FUNC0(hntdll, "RtlIntegerToChar");
	pRtlIntegerToUnicodeString = (void *)FUNC0(hntdll, "RtlIntegerToUnicodeString");
	pRtlMultiAppendUnicodeStringBuffer = (void *)FUNC0(hntdll, "RtlMultiAppendUnicodeStringBuffer");
	pRtlUnicodeStringToAnsiString = (void *)FUNC0(hntdll, "RtlUnicodeStringToAnsiString");
	pRtlUnicodeStringToInteger = (void *)FUNC0(hntdll, "RtlUnicodeStringToInteger");
	pRtlUpcaseUnicodeChar = (void *)FUNC0(hntdll, "RtlUpcaseUnicodeChar");
	pRtlUpcaseUnicodeString = (void *)FUNC0(hntdll, "RtlUpcaseUnicodeString");
	pRtlUpperChar = (void *)FUNC0(hntdll, "RtlUpperChar");
	pRtlUpperString = (void *)FUNC0(hntdll, "RtlUpperString");
	pRtlValidateUnicodeString = (void *)FUNC0(hntdll, "RtlValidateUnicodeString");
	pRtlGUIDFromString = (void *)FUNC0(hntdll, "RtlGUIDFromString");
	pRtlStringFromGUID = (void *)FUNC0(hntdll, "RtlStringFromGUID");
	pRtlIsTextUnicode = (void *)FUNC0(hntdll, "RtlIsTextUnicode");
        pRtlHashUnicodeString = (void*)FUNC0(hntdll, "RtlHashUnicodeString");
        pRtlUnicodeToUTF8N = (void*)FUNC0(hntdll, "RtlUnicodeToUTF8N");
        pRtlUTF8ToUnicodeN = (void*)FUNC0(hntdll, "RtlUTF8ToUnicodeN");
    }
}