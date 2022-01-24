#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Length; char* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  RTL_RELATIVE_NAME_U ;
typedef  char* PWSTR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  char* LPCWSTR ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (char*,char*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 size_t const FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(LPCWSTR pwsz, LPCWSTR pwszExpected, LPCWSTR pwszExpectedPartName)
{
    UNICODE_STRING      NtName;
    PWSTR               PartName;
    RTL_RELATIVE_NAME_U RelativeName;
	BOOLEAN             bOK;

	bOK = FUNC0(pwsz, &NtName, (PCWSTR*)&PartName, &RelativeName);

	FUNC1(bOK, "RtlDosPathNameToNtPathName_U failed");
	if (!bOK) {
		FUNC3("input: \"%S\"\n", pwsz);
		return;
	}

#if !defined(COMPILE_AS_ROSTEST) && defined(PRINT_INFO)
	printf("--------------------------\n");
	printf("in          : \"%S\"\n", pwsz);
	prucs("NtName", &NtName);
	printf("PartName    : \"%S\"\n", PartName ? PartName : L"(null)");
//	prucs("RelativeName", &RelativeName.RelativeName);
#endif

	// Disregarding input, output (NtName) shall always start with "\??\".
	bOK = NtName.Length >= 8 &&
	      FUNC2(NtName.Buffer, L"\\??\\", 8) == 0;
	FUNC1(bOK, "NtName does not start with \"\\??\\\"");
	if (!bOK) {
		return;
	}

	if (pwszExpected) {
		PWSTR pwszActual = NtName.Buffer + 4;
		const size_t lenExp = FUNC6(pwszExpected);
		const size_t lenAct = (NtName.Length - 8) / 2;
		bOK = (lenExp == lenAct) &&
		      FUNC2(pwszActual, pwszExpected, lenExp * 2) == 0;
		FUNC1(bOK, "NtName does not match expected");
		if (!bOK)
		{
			FUNC3("input:  : %2Iu chars \"%S\"\n", FUNC6(pwsz), pwsz);
			FUNC3("Expected: %2Iu chars \"%S\"\n", lenExp, pwszExpected);
			FUNC3("Actual  : %2Iu chars \"%S\"\n", lenAct, lenAct ? pwszActual : L"(null)");
			return;
		}
	} else
	if (NtName.Length)
	{
		PWSTR pwszActual = NtName.Buffer + 4;
		const size_t lenAct = (NtName.Length - 8) / 2;
		FUNC1(FALSE, "Unexpected NtName (expected NULL)");
		FUNC3("input:  : %2Iu chars \"%S\"\n", FUNC6(pwsz), pwsz);
		FUNC3("Actual  : %2Iu chars \"%S\"\n", lenAct, pwszActual);
	}

	if (pwszExpectedPartName) {
		const size_t lenExp = FUNC6(pwszExpectedPartName);
		const size_t lenAct = PartName ? FUNC6(PartName) : 0;
		bOK = (lenExp == lenAct) &&
		      FUNC5(PartName, pwszExpectedPartName) == 0;
		FUNC1(bOK, "PartName does not match expected");
		if (!bOK) {
			FUNC3("input:  : %2Iu chars \"%S\"\n", FUNC6(pwsz), pwsz);
			FUNC3("Expected: %2Iu chars \"%S\"\n", lenExp, pwszExpectedPartName);
			FUNC3("Actual  : %2Iu chars \"%S\"\n", lenAct, lenAct ? PartName : L"(null)");
			return;
		}
	} else
	if (PartName)
	{
		FUNC1(FALSE, "Unexpected PartName (expected NULL).");
		FUNC3("input:  : %2Iu chars \"%S\"\n", FUNC6(pwsz), pwsz);
		FUNC3("Actual  : %2Iu chars %S\n", FUNC6(PartName), PartName);
	}
}