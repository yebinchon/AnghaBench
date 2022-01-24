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
typedef  scalar_t__ RFC1766TOLCIDA ;
typedef  scalar_t__ LCIDTORFC1766A ;
typedef  scalar_t__ ISCONVERTINETSTRINGAVAILABLE ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  scalar_t__ CONVERTINETUNICODETOMULTIBYTE ;
typedef  int /*<<< orphan*/ * CONVERTINETSTRING ;
typedef  scalar_t__ CONVERTINETMULTIBYTETOUNICODE ;

/* Variables and functions */
 scalar_t__ ConvertINetMultiByteToUnicode ; 
 int /*<<< orphan*/ * ConvertINetString ; 
 scalar_t__ ConvertINetUnicodeToMultiByte ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ IsConvertINetStringAvailable ; 
 scalar_t__ LcidToRfc1766A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ Rfc1766ToLcidA ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int TRUE ; 

__attribute__((used)) static int
FUNC3(void)
{
    HMODULE h;
    if (ConvertINetString != NULL)
        return TRUE;
    h = FUNC1(FUNC2("mlang.dll"));
    if (!h)
        return FALSE;
    ConvertINetString = (CONVERTINETSTRING)FUNC0(h, "ConvertINetString");
    ConvertINetMultiByteToUnicode = (CONVERTINETMULTIBYTETOUNICODE)FUNC0(h, "ConvertINetMultiByteToUnicode");
    ConvertINetUnicodeToMultiByte = (CONVERTINETUNICODETOMULTIBYTE)FUNC0(h, "ConvertINetUnicodeToMultiByte");
    IsConvertINetStringAvailable = (ISCONVERTINETSTRINGAVAILABLE)FUNC0(h, "IsConvertINetStringAvailable");
    LcidToRfc1766A = (LCIDTORFC1766A)FUNC0(h, "LcidToRfc1766A");
    Rfc1766ToLcidA = (RFC1766TOLCIDA)FUNC0(h, "Rfc1766ToLcidA");
    return TRUE;
}