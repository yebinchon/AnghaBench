#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_0; int member_1; int /*<<< orphan*/  dwMaximumCipherStrength; int /*<<< orphan*/  dwMinimumCipherStrength; } ;
typedef  TYPE_1__ SecPkgCred_CipherStrengths ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/  PCredHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SECPKG_ATTR_CIPHER_STRENGTHS ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(PCredHandle handle)
{
    SecPkgCred_CipherStrengths strength = {-1,-1};
    SECURITY_STATUS st;

    st = FUNC1(handle, SECPKG_ATTR_CIPHER_STRENGTHS, &strength);
    FUNC2(st == SEC_E_OK, "QueryCredentialsAttributesA failed: %u\n", FUNC0());
    FUNC2(strength.dwMinimumCipherStrength, "dwMinimumCipherStrength not changed\n");
    FUNC2(strength.dwMaximumCipherStrength, "dwMaximumCipherStrength not changed\n");
    FUNC3("strength %d - %d\n", strength.dwMinimumCipherStrength, strength.dwMaximumCipherStrength);
}