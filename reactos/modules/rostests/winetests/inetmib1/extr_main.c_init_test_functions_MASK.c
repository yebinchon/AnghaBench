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
typedef  int /*<<< orphan*/ * HMODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* pSnmpExtensionInit ; 
 void* pSnmpExtensionQuery ; 

__attribute__((used)) static HMODULE FUNC3(void)
{
    HMODULE mod = FUNC1("inetmib1");

    FUNC2(mod != NULL, "failed to load inetmib1.dll\n");

    if (!mod) return NULL;

    pSnmpExtensionInit = (void *)FUNC0(mod, "SnmpExtensionInit");
    pSnmpExtensionQuery = (void *)FUNC0(mod, "SnmpExtensionQuery");

    return mod;
}