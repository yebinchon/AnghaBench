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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* pSHCreateQueryCancelAutoPlayMoniker ; 
 void* pSHCreateSessionKey ; 
 void* pSHPropStgCreate ; 
 void* pSHPropStgReadMultiple ; 
 void* pSHPropStgWriteMultiple ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hmod = FUNC0("shell32.dll");

    pSHPropStgCreate = (void*)FUNC1(hmod, "SHPropStgCreate");
    pSHPropStgReadMultiple = (void*)FUNC1(hmod, "SHPropStgReadMultiple");
    pSHPropStgWriteMultiple = (void*)FUNC1(hmod, "SHPropStgWriteMultiple");
    pSHCreateQueryCancelAutoPlayMoniker = (void*)FUNC1(hmod, "SHCreateQueryCancelAutoPlayMoniker");
    pSHCreateSessionKey = (void*)FUNC1(hmod, (char*)723);
}