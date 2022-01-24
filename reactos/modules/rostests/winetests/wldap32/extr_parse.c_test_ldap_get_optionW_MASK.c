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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  LDAP ;

/* Variables and functions */
 int /*<<< orphan*/  LDAP_OPT_PROTOCOL_VERSION ; 
 scalar_t__ LDAP_VERSION3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2( LDAP *ld )
{
    ULONG ret, version;

    ret = FUNC0( ld, LDAP_OPT_PROTOCOL_VERSION, &version );
    FUNC1( !ret, "ldap_get_optionW failed 0x%08x\n", ret );
    FUNC1( version == LDAP_VERSION3, "got %u\n", version );
}