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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* pConvertINetMultiByteToUnicode ; 
 void* pConvertINetUnicodeToMultiByte ; 
 void* pGetCPInfoExA ; 
 void* pLcidToRfc1766A ; 
 void* pRfc1766ToLcidA ; 

__attribute__((used)) static BOOL FUNC2(void)
{
    HMODULE hMlang;

    hMlang = FUNC0("mlang.dll");
    pConvertINetMultiByteToUnicode = (void *)FUNC1(hMlang, "ConvertINetMultiByteToUnicode");
    pConvertINetUnicodeToMultiByte = (void *)FUNC1(hMlang, "ConvertINetUnicodeToMultiByte");
    pRfc1766ToLcidA = (void *)FUNC1(hMlang, "Rfc1766ToLcidA");
    pLcidToRfc1766A = (void *)FUNC1(hMlang, "LcidToRfc1766A");

    pGetCPInfoExA = (void *)FUNC1(FUNC0("kernel32.dll"), "GetCPInfoExA");

    return TRUE;
}