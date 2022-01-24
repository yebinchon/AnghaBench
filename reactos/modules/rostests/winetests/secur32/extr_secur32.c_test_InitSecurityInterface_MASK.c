#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ dwVersion; scalar_t__ Reserved3; scalar_t__ EncryptMessage; scalar_t__ Reserved4; scalar_t__ DecryptMessage; int /*<<< orphan*/  Reserved2; } ;
struct TYPE_5__ {scalar_t__ dwVersion; scalar_t__ Reserved3; scalar_t__ EncryptMessage; scalar_t__ Reserved4; scalar_t__ DecryptMessage; int /*<<< orphan*/  Reserved2; } ;
typedef  TYPE_1__* PSecurityFunctionTableW ;
typedef  TYPE_2__* PSecurityFunctionTableA ;

/* Variables and functions */
 scalar_t__ SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 TYPE_2__* FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    PSecurityFunctionTableA sftA;
    PSecurityFunctionTableW sftW;

    sftA = FUNC1();
    FUNC0(sftA != NULL, "pInitSecurityInterfaceA failed\n");
    FUNC0(sftA->dwVersion == SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION, "wrong dwVersion %d in security function table\n", sftA->dwVersion);
    FUNC0(!sftA->Reserved2,
       "Reserved2 should be NULL instead of %p in security function table\n",
       sftA->Reserved2);
    FUNC0(sftA->Reserved3 == sftA->EncryptMessage,
       "Reserved3 should be equal to EncryptMessage in the security function table\n");
    FUNC0(sftA->Reserved4 == sftA->DecryptMessage,
       "Reserved4 should be equal to DecryptMessage in the security function table\n");

    if (!&pInitSecurityInterfaceW)
    {
        FUNC3("InitSecurityInterfaceW not exported by secur32.dll\n");
        return;
    }

    sftW = FUNC2();
    FUNC0(sftW != NULL, "pInitSecurityInterfaceW failed\n");
    FUNC0(sftW->dwVersion == SECURITY_SUPPORT_PROVIDER_INTERFACE_VERSION, "wrong dwVersion %d in security function table\n", sftW->dwVersion);
    FUNC0(!sftW->Reserved2, "Reserved2 should be NULL instead of %p in security function table\n", sftW->Reserved2);
    FUNC0(sftW->Reserved3 == sftW->EncryptMessage, "Reserved3 should be equal to EncryptMessage in the security function table\n");
    FUNC0(sftW->Reserved4 == sftW->DecryptMessage, "Reserved4 should be equal to DecryptMessage in the security function table\n");
}