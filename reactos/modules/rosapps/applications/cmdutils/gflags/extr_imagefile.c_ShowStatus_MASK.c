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
typedef  int DWORD ;

/* Variables and functions */
 char* ImageFile ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(DWORD GlobalFlags, DWORD Ignored)
{
    if (GlobalFlags)
    {
        FUNC1(L"Current Registry Settings for %s executable are: %08x\n", ImageFile, GlobalFlags);
        FUNC0(GlobalFlags, 0);
    }
    else
    {
        FUNC1(L"No Registry Settings for %s executable\n", ImageFile);
    }
    if (Ignored)
    {
        FUNC1(L"The following settings were ignored: %08x\n", Ignored);
        FUNC0(Ignored, 0);
    }
}