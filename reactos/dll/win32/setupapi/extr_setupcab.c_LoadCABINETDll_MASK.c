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
 scalar_t__ CABINET_hInstance ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 void* sc_FDICopy ; 
 void* sc_FDICreate ; 
 void* sc_FDIDestroy ; 

__attribute__((used)) static BOOL FUNC3(void)
{
  if (!CABINET_hInstance) {
    CABINET_hInstance = FUNC2("cabinet.dll");
    if (CABINET_hInstance)  {
      sc_FDICreate = (void *)FUNC1(CABINET_hInstance, "FDICreate");
      sc_FDICopy = (void *)FUNC1(CABINET_hInstance, "FDICopy");
      sc_FDIDestroy = (void *)FUNC1(CABINET_hInstance, "FDIDestroy");
      return TRUE;
    } else {
      FUNC0("load cabinet dll failed.\n");
      return FALSE;
    }
  } else
    return TRUE;
}