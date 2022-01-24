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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* pStiCreateInstance ; 
 void* pStiCreateInstanceA ; 
 void* pStiCreateInstanceW ; 
 scalar_t__ sti_dll ; 

__attribute__((used)) static BOOL FUNC2(void)
{
    sti_dll = FUNC1("sti.dll");
    if (sti_dll)
    {
        pStiCreateInstance = (void*)
            FUNC0(sti_dll, "StiCreateInstance");
        pStiCreateInstanceA = (void*)
            FUNC0(sti_dll, "StiCreateInstanceA");
        pStiCreateInstanceW = (void*)
            FUNC0(sti_dll, "StiCreateInstanceW");
        return TRUE;
    }
    return FALSE;
}