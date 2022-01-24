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
typedef  scalar_t__* LPCWSTR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int TRUE ; 
 int FUNC0 (scalar_t__*) ; 
 int msidbUpgradeAttributesLanguagesExclusive ; 

__attribute__((used)) static BOOL FUNC1(DWORD lang1, LPCWSTR lang2, DWORD attributes)
{
    DWORD langdword;

    if (!lang2 || lang2[0]==0)
        return TRUE;

    langdword = FUNC0(lang2);

    if (attributes & msidbUpgradeAttributesLanguagesExclusive)
        return (lang1 != langdword);
    else
        return (lang1 == langdword);
}