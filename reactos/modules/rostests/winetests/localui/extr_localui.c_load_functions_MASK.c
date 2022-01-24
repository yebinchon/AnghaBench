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
typedef  int /*<<< orphan*/  VOID ;
typedef  char* LPCSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  hdll ; 
 int /*<<< orphan*/ * pInitializePrintMonitorUI ; 

__attribute__((used)) static LPCSTR FUNC2(void)
{
    LPCSTR  ptr;

    ptr = "localui.dll";
    hdll = FUNC1(ptr);
    if (!hdll) return ptr;

    ptr = "InitializePrintMonitorUI";
    pInitializePrintMonitorUI = (VOID *) FUNC0(hdll, ptr);
    if (!pInitializePrintMonitorUI) return ptr;

    return NULL;
}