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
 void* pChangeServiceConfig2A ; 
 void* pChangeServiceConfig2W ; 
 void* pEnumServicesStatusExA ; 
 void* pEnumServicesStatusExW ; 
 void* pGetSecurityInfo ; 
 void* pNotifyServiceStatusChangeW ; 
 void* pQueryServiceConfig2A ; 
 void* pQueryServiceConfig2W ; 
 void* pQueryServiceObjectSecurity ; 
 void* pQueryServiceStatusEx ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hadvapi32 = FUNC0("advapi32.dll");

    pChangeServiceConfig2A = (void*)FUNC1(hadvapi32, "ChangeServiceConfig2A");
    pChangeServiceConfig2W = (void*)FUNC1(hadvapi32, "ChangeServiceConfig2W");
    pEnumServicesStatusExA= (void*)FUNC1(hadvapi32, "EnumServicesStatusExA");
    pEnumServicesStatusExW= (void*)FUNC1(hadvapi32, "EnumServicesStatusExW");
    pGetSecurityInfo = (void *)FUNC1(hadvapi32, "GetSecurityInfo");
    pQueryServiceConfig2A= (void*)FUNC1(hadvapi32, "QueryServiceConfig2A");
    pQueryServiceConfig2W= (void*)FUNC1(hadvapi32, "QueryServiceConfig2W");
    pQueryServiceStatusEx= (void*)FUNC1(hadvapi32, "QueryServiceStatusEx");
    pQueryServiceObjectSecurity = (void*)FUNC1(hadvapi32, "QueryServiceObjectSecurity");
    pNotifyServiceStatusChangeW = (void*)FUNC1(hadvapi32, "NotifyServiceStatusChangeW");
}