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
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BCD ; 
 int /*<<< orphan*/  BCDPath ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKCR ; 
 int /*<<< orphan*/  HKCRPath ; 
 int /*<<< orphan*/  HKCU ; 
 int /*<<< orphan*/  HKCUPath ; 
 int /*<<< orphan*/  HKLM ; 
 int /*<<< orphan*/  HKLMPath ; 
 int /*<<< orphan*/  HKR ; 
 int /*<<< orphan*/  HKU ; 
 int /*<<< orphan*/  HKUPath ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC2(PWCHAR Name)
{
    if (!FUNC0(Name, HKCR))
    {
        FUNC1(Name, HKCRPath);
        return TRUE;
    }

    if (!FUNC0(Name, HKCU))
    {
        FUNC1(Name, HKCUPath);
        return TRUE;
    }

    if (!FUNC0(Name, HKLM))
    {
        FUNC1(Name, HKLMPath);
        return TRUE;
    }

    if (!FUNC0(Name, HKU))
    {
        FUNC1(Name, HKUPath);
        return TRUE;
    }

    if (!FUNC0(Name, BCD))
    {
        FUNC1(Name, BCDPath);
        return TRUE;
    }

#if 0
    if (!strcmpiW(Name, HKR))
        return FALSE;
#endif

  return FALSE;
}