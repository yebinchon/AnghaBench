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
 void* pNtAddAtom ; 
 void* pNtQueryInformationAtom ; 
 void* pRtlAddAtomToAtomTable ; 
 void* pRtlCreateAtomTable ; 
 void* pRtlDeleteAtomFromAtomTable ; 
 void* pRtlDestroyAtomTable ; 
 void* pRtlEmptyAtomTable ; 
 void* pRtlLookupAtomInAtomTable ; 
 void* pRtlPinAtomInAtomTable ; 
 void* pRtlQueryAtomInAtomTable ; 

__attribute__((used)) static void FUNC3(void)
{
    hntdll = FUNC1("ntdll.dll");
    FUNC2(hntdll != 0, "Unable to load ntdll.dll\n");

    if (hntdll)
    {
        pRtlCreateAtomTable = (void *)FUNC0(hntdll, "RtlCreateAtomTable");
        pRtlDestroyAtomTable = (void *)FUNC0(hntdll, "RtlDestroyAtomTable");
        pRtlEmptyAtomTable = (void *)FUNC0(hntdll, "RtlEmptyAtomTable");
        pRtlAddAtomToAtomTable = (void *)FUNC0(hntdll, "RtlAddAtomToAtomTable");
        pRtlDeleteAtomFromAtomTable = (void *)FUNC0(hntdll, "RtlDeleteAtomFromAtomTable");
        pRtlLookupAtomInAtomTable = (void *)FUNC0(hntdll, "RtlLookupAtomInAtomTable");
        pRtlPinAtomInAtomTable = (void *)FUNC0(hntdll, "RtlPinAtomInAtomTable");
        pRtlQueryAtomInAtomTable = (void *)FUNC0(hntdll, "RtlQueryAtomInAtomTable");

        pNtAddAtom = (void *)FUNC0(hntdll, "NtAddAtom");
        pNtQueryInformationAtom = (void *)FUNC0(hntdll, "NtQueryInformationAtom");
    }
}